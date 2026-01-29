# 跳跳糖科学 - 中国风视频项目总结

## 项目状态

### ✅ 已完成
- [x] 视频规划文件 (`public/plan.yaml`)
- [x] 6个场景组件 (`src/scenes/`)
- [x] Canvas 工具函数 (`src/utils/canvasUtils.ts`)
- [x] 入口组件 (`src/index.tsx`)
- [x] TypeScript 类型检查通过

### ⏳ 待完成
- [ ] 封面图像生成（需 baoyu-image-gen API key）
- [ ] 场景插图生成（需 API key）
- [ ] 6段场景音频生成（需 MiniMax API）
- [ ] 预览调试 (`pnpm run dev`)
- [ ] 渲染输出 (`pnpm run render`)

## 项目结构

```
remotion-template/
├── public/
│   ├── plan.yaml              # 视频规划
│   ├── audio/
│   │   ├── scene1.opus        # 场景1音频（需生成）
│   │   ├── scene2.opus        # 场景2音频（需生成）
│   │   ├── scene3.opus        # 场景3音频（需生成）
│   │   ├── scene4.opus        # 场景4音频（需生成）
│   │   ├── scene5.opus        # 场景5音频（需生成）
│   │   └── scene6.opus        # 场景6音频（需生成）
│   └── images/
│       └── cover.png          # 封面图（需生成）
├── src/
│   ├── index.tsx              # 入口组件
│   ├── scenes/
│   │   ├── Scene1_Opening.tsx     # 悬念开篇
│   │   ├── Scene2_Alchemy.tsx     # 炼丹探秘
│   │   ├── Scene3_Micro.tsx       # 微观揭秘（核心）
│   │   ├── Scene4_Release.tsx     # 气体释放
│   │   ├── Scene5_Resonance.tsx   # 口腔共鸣
│   │   └── Scene6_Conclusion.tsx  # 总结升华
│   └── utils/
│       └── canvasUtils.ts     # Canvas 动画工具
└── cover-image/
    └── popping-candy-science/
        ├── prompts/cover.md   # 封面生成提示词
        └── IMAGE_GEN_REQUIREMENTS.md  # 图像生成要求
```

## 视频参数

| 参数 | 值 |
|------|-----|
| 分辨率 | 1920x1080 |
| 帧率 | 30fps |
| 总时长 | 50秒 |
| 总帧数 | 1500帧 |

## 场景分布

| 场景 | 时长 | 帧数 | 内容 |
|------|------|------|------|
| 场景1 | 5秒 | 150 | 悬念开篇，水墨人物 |
| 场景2 | 8秒 | 240 | 炼丹探秘，丹炉场景 |
| 场景3 | 15秒 | 450 | 微观揭秘，CO₂气泡 |
| 场景4 | 10秒 | 300 | 气体释放，墨汁扩散 |
| 场景5 | 7秒 | 210 | 口腔共鸣，回纹动画 |
| 场景6 | 5秒 | 150 | 总结升华，印章落款 |

## 运行命令

```bash
# 开发预览
pnpm run dev

# 类型检查
npx tsc --noEmit

# 渲染视频
pnpm run render
```

## 视觉风格

- **主色调**：靛蓝（青花瓷蓝）、朱砂红、墨黑、宣纸白、金色
- **纹理元素**：冰裂纹、回纹、云纹、海浪纹
- **技术实现**：Canvas 粒子系统、SVG 动画、interpolate 时序控制

## 后续步骤

1. **配置 API Key**：在 `~/.baoyu-skills/.env` 或环境变量中配置
   - `GOOGLE_API_KEY` 或 `OPENAI_API_KEY`（图像生成）
   - `MINIMAX_API_KEY`（音频生成，已在 .mcp.json 配置）

2. **生成素材**：
   ```bash
   # 封面图
   npx bun ~/.claude/skills/baoyu-image-gen/scripts/main.ts \
     --promptfile cover-image/popping-candy-science/prompts/cover.md \
     --image cover-image/popping-candy-science/cover.png --ar 16:9

   # 场景插图
   npx bun ~/.claude/skills/baoyu-article-illustrator/...
   ```

3. **生成音频**：使用 MiniMax MCP 或直接调用 API

4. **预览调试**：`pnpm run dev`

5. **渲染输出**：`pnpm run render`
