// 使用 MiniMax T2A API 生成音频的通用脚本
// 支持从 plan.yaml 自动解析或从 JSON 文件读取场景
//
// 用法: node generate-minimax-audio.js [options]
//
// 选项:
//   --plan, -p      从 plan.yaml 自动解析场景 [默认行为]
//   --input, -i     场景配置文件路径 (JSON 格式)
//   --output, -o    音频输出目录 [默认: public/audio]
//   --voice         默认语音 ID [默认: 从 plan.yaml 读取或使用 female-shaonv]
//   --emotion       默认情感 [默认: 从 plan.yaml 读取或使用 neutral]
//   --speed         默认语速 [默认: 从 plan.yaml 读取或使用 1.0]
//   --delay         请求间隔(ms) [默认: 1000]
//   --help, -h      显示帮助
//
// 示例:
//   node generate-minimax-audio.js                    # 从 plan.yaml 自动解析
//   node generate-minimax-audio.js -i scenes.json     # 从 JSON 文件读取
//   node generate-minimax-audio.js -o ./audio --voice male-shaonv

const https = require("https");
const fs = require("fs");
const path = require("path");

const API_HOST = "api.minimaxi.com";

// 解析命令行参数
function parseArgs() {
  const args = process.argv.slice(2);
  const options = {
    usePlan: false,
    planPath: path.join(__dirname, "../public/plan.yaml"),
    input: null,
    output: path.join(__dirname, "../public/audio"),
    voice: null, // 将从 plan.yaml 或默认值获取
    emotion: null,
    speed: null,
    delay: 1000,
  };

  for (let i = 0; i < args.length; i++) {
    const arg = args[i];

    switch (arg) {
      case "--help":
      case "-h":
        showHelp();
        process.exit(0);
        break;
      case "--plan":
      case "-p":
        options.usePlan = true;
        if (args[i + 1] && !args[i + 1].startsWith("-")) {
          options.planPath = args[++i];
        }
        break;
      case "--input":
      case "-i":
        options.input = args[++i];
        break;
      case "--output":
      case "-o":
        options.output = args[++i];
        break;
      case "--voice":
        options.voice = args[++i];
        break;
      case "--emotion":
        options.emotion = args[++i];
        break;
      case "--speed":
        options.speed = parseFloat(args[++i]);
        break;
      case "--delay":
        options.delay = parseInt(args[++i], 10);
        break;
      default:
        if (arg.startsWith("-")) {
          console.error(`❌ 未知选项: ${arg}`);
          showHelp();
          process.exit(1);
        }
        break;
    }
  }

  // 如果没有指定输入方式，默认尝试使用 plan.yaml
  if (!options.input && !options.usePlan) {
    if (fs.existsSync(options.planPath)) {
      options.usePlan = true;
    }
  }

  return options;
}

// 显示帮助信息
function showHelp() {
  console.log(`
🎙️  MiniMax T2A 语音合成工具

用法: node generate-minimax-audio.js [选项]

选项:
  -p, --plan [path]   从 plan.yaml 自动解析场景 [默认: public/plan.yaml]
  -i, --input <path>  从 JSON 文件读取场景配置
  -o, --output <dir>  音频输出目录 [默认: public/audio]
      --voice <id>    语音 ID [默认: 从 plan.yaml 或 female-shaonv]
      --emotion <e>   情感 [默认: 从 plan.yaml 或 neutral]
      --speed <n>     语速 [默认: 从 plan.yaml 或 1.0]
      --delay <ms>    请求间隔毫秒数 [默认: 1000]
  -h, --help          显示此帮助

输入方式 (按优先级):
  1. --input <file>   从 JSON 文件读取场景
  2. --plan [file]    从 plan.yaml 自动解析
  3. 自动检测         如果存在 public/plan.yaml 则使用它

JSON 格式示例:
  [
    {
      "id": "scene_01",
      "text": "要合成的文本",
      "voice_id": "female-shaonv",
      "emotion": "neutral",
      "speed": 1.0
    }
  ]

环境变量:
  需要在 .env 文件中配置 MINIMAX_API_KEY

示例:
  # 从 plan.yaml 自动解析
  node generate-minimax-audio.js

  # 从指定 plan.yaml 解析
  node generate-minimax-audio.js -p ./my-plan.yaml

  # 从 JSON 文件读取
  node generate-minimax-audio.js -i scenes.json

  # 自定义参数
  node generate-minimax-audio.js -o ./audio --voice male-shaonv --speed 1.2
`);
}

// 从 .env 文件加载 API Key
function loadApiKey() {
  const envPath = path.join(__dirname, "../.env");
  if (!fs.existsSync(envPath)) {
    console.error("❌ 错误: 找不到 .env 文件");
    process.exit(1);
  }

  const envContent = fs.readFileSync(envPath, "utf-8");
  const lines = envContent.split("\n");

  for (const line of lines) {
    const trimmed = line.trim();
    if (!trimmed || trimmed.startsWith("#")) continue;

    const match = trimmed.match(/^MINIMAX_API_KEY\s*[:=]\s*"?([^"\n]+)"?$/);
    if (match) {
      return match[1].trim();
    }
  }

  console.error("❌ 错误: 在 .env 文件中找不到 MINIMAX_API_KEY");
  process.exit(1);
}

// 加载 YAML 文件
function loadYaml(yamlPath) {
  try {
    const yaml = require("js-yaml");
    const content = fs.readFileSync(yamlPath, "utf-8");
    return yaml.load(content);
  } catch (err) {
    console.error(`❌ 错误: 无法解析 YAML 文件: ${err.message}`);
    process.exit(1);
  }
}

// 从 plan.yaml 解析场景
function parsePlanYaml(planPath) {
  console.log(`📄 解析 plan.yaml: ${planPath}`);

  const plan = loadYaml(planPath);

  if (!plan.scenes || !Array.isArray(plan.scenes)) {
    console.error("❌ 错误: plan.yaml 中找不到 scenes 数组");
    process.exit(1);
  }

  // 提取音频配置
  const audioDefaults = plan.audio_guide?.voice || {};

  const scenes = plan.scenes
    .filter((scene) => scene.audio_text && scene.audio_text.trim())
    .map((scene) => ({
      id: scene.id,
      text: scene.audio_text,
      voice_id: audioDefaults.voice_id || "female-shaonv",
      emotion: audioDefaults.emotion || "neutral",
      speed: audioDefaults.speed !== undefined ? audioDefaults.speed : 1.0,
    }));

  if (scenes.length === 0) {
    console.error("❌ 错误: plan.yaml 中没有找到有效的音频场景");
    process.exit(1);
  }

  // 返回场景和默认配置
  return {
    scenes,
    defaults: {
      voice: audioDefaults.voice_id || "female-shaonv",
      emotion: audioDefaults.emotion || "neutral",
      speed: audioDefaults.speed !== undefined ? audioDefaults.speed : 1.0,
    },
  };
}

// 从 JSON 文件加载场景
function loadScenesFromJson(inputPath) {
  if (!fs.existsSync(inputPath)) {
    console.error(`❌ 错误: 找不到场景配置文件: ${inputPath}`);
    console.log(`\n💡 提示: 可以创建一个示例配置文件:`);
    console.log(createExampleJson());
    process.exit(1);
  }

  try {
    const content = fs.readFileSync(inputPath, "utf-8");
    const scenes = JSON.parse(content);

    if (!Array.isArray(scenes) || scenes.length === 0) {
      console.error("❌ 错误: 场景配置必须是包含至少一个场景的非空数组");
      process.exit(1);
    }

    // 验证每个场景的必需字段
    for (const scene of scenes) {
      if (!scene.id) {
        console.error("❌ 错误: 场景缺少必需的 'id' 字段");
        process.exit(1);
      }
      if (!scene.text) {
        console.error(`❌ 错误: 场景 ${scene.id} 缺少必需的 'text' 字段`);
        process.exit(1);
      }
    }

    return { scenes, defaults: null };
  } catch (err) {
    console.error(`❌ 错误: 无法解析场景配置文件: ${err.message}`);
    process.exit(1);
  }
}

// 创建示例 JSON
function createExampleJson() {
  const example = [
    {
      id: "scene_01",
      text: "这是第一句要合成语音的文本",
      voice_id: "female-shaonv",
      emotion: "neutral",
      speed: 1.0,
    },
    {
      id: "scene_02",
      text: "这是第二句文本，使用默认参数",
    },
  ];

  return JSON.stringify(example, null, 2);
}

// 确保输出目录存在
function ensureOutputDir(outputDir) {
  if (!fs.existsSync(outputDir)) {
    fs.mkdirSync(outputDir, { recursive: true });
    console.log(`📁 创建输出目录: ${outputDir}`);
  }
}

// 生成单个音频
async function generateAudio(scene, options, apiKey) {
  return new Promise((resolve, reject) => {
    const payload = JSON.stringify({
      text: scene.text,
      voice_id: scene.voice_id || options.voice,
      emotion: scene.emotion || options.emotion,
      speed: scene.speed !== undefined ? scene.speed : options.speed,
      language_boost: "Chinese",
    });

    const reqOptions = {
      hostname: API_HOST,
      path: "/v1/t2a",
      method: "POST",
      headers: {
        "Content-Type": "application/json",
        Authorization: `Bearer ${apiKey}`,
        "Content-Length": Buffer.byteLength(payload),
      },
    };

    const req = https.request(reqOptions, (res) => {
      let data = "";
      res.on("data", (chunk) => (data += chunk));
      res.on("end", () => {
        try {
          const response = JSON.parse(data);
          if (response.audio_file) {
            const audioBuffer = Buffer.from(response.audio_file, "base64");
            const outputPath = path.join(options.output, `${scene.id}.mp3`);
            fs.writeFileSync(outputPath, audioBuffer);
            console.log(`  ✓ ${scene.id}.mp3`);
            resolve({ success: true, id: scene.id });
          } else {
            console.error(`  ✗ ${scene.id}: ${response.message || "未知错误"}`);
            reject(new Error(`API 错误: ${response.message || "无音频数据"}`));
          }
        } catch (err) {
          console.error(`  ✗ ${scene.id}: ${err.message}`);
          reject(err);
        }
      });
    });

    req.on("error", (err) => {
      console.error(`  ✗ ${scene.id}: 请求失败 - ${err.message}`);
      reject(err);
    });

    req.write(payload);
    req.end();
  });
}

// 主函数
async function main() {
  const options = parseArgs();
  const apiKey = loadApiKey();

  console.log("\n🎙️  MiniMax 语音合成\n");

  let scenes;
  let planDefaults = {};

  // 加载场景
  if (options.input) {
    // 从 JSON 文件读取
    console.log(`📂 输入文件: ${options.input}`);
    const result = loadScenesFromJson(options.input);
    scenes = result.scenes;
  } else if (options.usePlan) {
    // 从 plan.yaml 解析
    const result = parsePlanYaml(options.planPath);
    scenes = result.scenes;
    planDefaults = result.defaults;
    console.log(`   找到 ${scenes.length} 个音频场景\n`);
  } else {
    console.error("❌ 错误: 无法确定输入方式");
    console.log("💡 提示: 使用 --plan 从 plan.yaml 解析，或使用 --input 指定 JSON 文件");
    process.exit(1);
  }

  // 应用默认值
  options.voice = options.voice || planDefaults.voice || "female-shaonv";
  options.emotion = options.emotion || planDefaults.emotion || "neutral";
  options.speed = options.speed !== null ? options.speed : planDefaults.speed !== undefined ? planDefaults.speed : 1.0;

  console.log(`📂 输出目录: ${options.output}`);
  console.log(`🔊 默认语音: ${options.voice}`);
  console.log(`😊 默认情感: ${options.emotion}`);
  console.log(`⚡ 默认语速: ${options.speed}`);
  console.log(`⏱️  请求间隔: ${options.delay}ms\n`);

  ensureOutputDir(options.output);
  console.log(`📝 共 ${scenes.length} 个场景待生成\n`);

  let successCount = 0;
  let failCount = 0;

  for (let i = 0; i < scenes.length; i++) {
    const scene = scenes[i];
    console.log(`[${i + 1}/${scenes.length}] ${scene.id}`);

    try {
      await generateAudio(scene, options, apiKey);
      successCount++;
    } catch (err) {
      failCount++;
    }

    // 请求间隔（最后一个不延迟）
    if (i < scenes.length - 1 && options.delay > 0) {
      await new Promise((r) => setTimeout(r, options.delay));
    }
  }

  console.log(`\n✅ 完成: ${successCount} 成功, ${failCount} 失败`);

  if (failCount > 0) {
    process.exit(1);
  }
}

main().catch((err) => {
  console.error("\n❌ 程序错误:", err.message);
  process.exit(1);
});
