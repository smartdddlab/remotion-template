# 高可用 Remotion 视频制作

<!-- AI开发手册: 思维约束 + 工作流程 + 技术规则 -->

## 🧠 AI思维约束

### 核心原则：不要弱智思考
1. **不考虑技术能力**：直接实现所有技术需求（粒子系统、Three.js、Lottie、Canvas）
2. **不考虑时间约束**：质量优先，一步到位实现所有视觉要求
3. **素材问题已解决**：需要新图像时立即用baoyu-skills生成，按`visual_aesthetic`自动匹配风格
4. **一步到位完整实现**：严格按`public/plan.yaml`的`visual_direction`实现，不允许简化/替代/延后
5. **开发确认机制**：方案完成后确认一次，含baoyu-skills素材需说明
6. **强制质量检查**：必须运行`pnpm run lint`，绝不跳过

### 强制规则
1. **Confidence Check 自动触发**：任何实现任务开始前，必须自动加载 Confidence Check skill
2. **plan.yaml 强制对照**：开发每个场景前必须阅读并对照 `public/plan.yaml`，确保 `visual_direction` 完整实现
3. **触发时机**：视频规划完成、创建实现方案、开始代码编写前
4. **验证要求**：必须达到 90% 以上置信度才能继续实现
5. **使用 TODO**：确保任务清晰、可追踪

### baoyu-skills 风格匹配

baoyu-danger-gemini-web :与 Gemini Web 交互，生成文本和图片,没有图像生成 API key使用此方案

| visual_aesthetic | 推荐技能 | 推荐风格 |
|-----------------|---------|---------|
| illustrative with tech elements | baoyu-article-illustrator | tech/editorial/blueprint |
| scientific visualization | baoyu-infographic | technical-schematic/scientific |
| playful cartoon | baoyu-comic | vibrant/playful/classic |
| professional corporate | baoyu-infographic | corporate/clean/bold-graphic |
| educational tutorial | baoyu-article-illustrator | chalkboard/sketch-notes/warm |
| magazine editorial | baoyu-infographic | editorial-infographic/bold-graphic |
| | 使用 TODO、可追踪* |

### Remotion 能力使用
**必须使用**：Canvas粒子系统、Three.js 3D、Lottie动画、SVG动画、复杂interpolate组合

**禁止思考**：❌"我不会" ❌"简化吧" ❌"时间不够" ❌"素材不好获取"

---

## 🔄 视频制作流程 - always use todo

### 第1步：视频规划
- 使用 AI 对话规划视频内容，生成 `public/plan.yaml`
- 审核要点：画面指导明确、音频指导含倍率、结构清晰、时长合理

### 第2步：开发方案确认（强制）
**要求**：分析图像素材需求和Remotion技术方案，用户确认后才能开发

### 第3步：音频生成
- 使用minimax-mcp生成场景音频
- 参数：`speed=1.0`, `emotion=neutral`, `language_boost=Chinese`
- 验证：语速3.5-4.1字/秒，时长偏差<10%

### 第4步：Remotion 视频开发（强制逐场景对照）
**核心原则**：逐行对照 `public/plan.yaml`，确保每个 `visual_direction` 都被完整实现

**开发时强制规则**：
- 每个场景组件必须计算 `const relativeFrame = frame - from;`
- 所有 `interpolate` 输入范围必须在 `[0, durationInFrames]` 内
- `visual_direction` 描述必须100%实现，不允许简化/替代/延后
- 音频时长必须匹配 `duration` 字段（误差≤0.1秒）

**开发后自检**：
```
□ 检查 visual_direction 实现完整度
□ 验证 relativeFrame 计算正确
□ 验证 interpolate 范围无溢出
□ 确认无 TypeScript 错误（运行 pnpm run lint）
□ 对比 plan.yaml 确认无遗漏
```

### 第5步：预览验证（强制检查点）
**运行预览**：`pnpm run dev`

**验证清单**：
1. **画面一致性**：预览效果与 `visual_direction` 描述一致
2. **动画正确性**：检查无 NaN、无跳变、无溢出
3. **音频同步**：音频播放与画面切换时间匹配
4. **时长准确性**：场景时长与 `plan.yaml` 一致
5. **视觉完整性**：所有素材正确加载，无缺失

### 第6步：渲染输出与最终验证
```bash
pnpm run render
```

**输出验证**：
- 输出路径：`output/video.mp4`
- 视频时长 = 音频总时长（误差≤0.1秒）
- 分辨率：1920x1080，帧率：30fps

---

## ⚡ 技术规则

### 规则1：相对帧数计算（关键）
**必须**：在Sequence组件内，组件开头立即计算 `const relativeFrame = frame - from;`

**所有interpolate使用相对帧数**：
```tsx
const opacity = interpolate(relativeFrame, [0, 10, duration - 10, duration], [0, 1, 1, 0]);
```

**嵌套动画也使用相对帧数**：
```tsx
{[0, 1, 2, 3, 4].map((index) => {
  const bubbleScale = interpolate(
    relativeFrame,  // ✅ 使用相对帧数
    [30 + index * 15, 60 + index * 15],
    [0, 1]
  );
  return <div key={index} style={{ transform: `scale(${bubbleScale})` }} />;
})}
```

### 规则2：interpolate范围验证
- 输入范围必须在`[0, duration]`内
- 场景结束时opacity不应为0（除非有意fade out）

### 规则3：音频参数统一
所有场景必须使用相同参数：
```bash
MiniMax-mcp_text_to_audio(
  text="场景文本",
  voice_id="female-shaonv",
  emotion="neutral",  // ✅ 严格统一
  speed=1.0,
  language_boost="Chinese"
)
```

---

## 🚨 常见陷阱

| 陷阱 | 症状 | 解决方案 |
|------|------|----------|
| 相对帧数错误 | 后继场景不可见、嵌套动画无效 | 使用 `const relativeFrame = frame - from;` |
| interpolate溢出 | 动画跳变、NaN | 确保范围在 `[0, duration]` 内 |
| 音频参数不一致 | 语调情感不连贯 | 统一使用 `emotion=neutral, speed=1.0` |
| 没有图像生成 API key
 | 无法生成图片 | 使用 baoyu-danger-gemini-web :与 Gemini Web 交互，生成文本和图片 |

---

## ✅ 质量检查清单

- [ ] **TypeScript类型检查通过**：运行 `pnpm run lint`
- [ ] **所有场景使用relativeFrame计算**：检查 `const relativeFrame = frame - from;`
- [ ] **音频参数正确**：`emotion=neutral`, `speed=1.0`, `language_boost=Chinese`
- [ ] **所有visual_direction完整实现**：对照`public/plan.yaml`验证
- [ ] **场景过渡实现**：符合`plan.yaml`中的`transition_logic`
- [ ] **主色调符合设计**：遵循`plan.yaml`中的`visual_design_guide`
- [ ] **所有interpolate范围在[0, duration]内**：无溢出
- [ ] **视频时长与音频一致**：误差≤0.1秒

---

## 📦 快速参考

### 核心命令
```bash
# 音频生成
MiniMax-mcp_text_to_audio(text="场景文本", voice_id="female-shaonv", emotion="neutral", speed=1.0, language_boost="Chinese")

# 图像生成
baoyu-article-illustrator content.md --style tech
baoyu-infographic content.md --layout funnel --style technical-schematic

# 开发验证
pnpm run dev    # 预览
pnpm run render # 渲染
```

### 代码模板
```tsx
import { useCurrentFrame, interpolate, Sequence, AbsoluteFill } from 'remotion';

interface SceneProps {
  from: number;
  durationInFrames: number;
}

export const SceneTemplate: React.FC<SceneProps> = ({ from, durationInFrames }) => {
  const frame = useCurrentFrame();
  const relativeFrame = frame - from;  // ⚡ 关键：计算相对帧数
  
  const opacity = interpolate(
    relativeFrame, 
    [0, 10, durationInFrames - 10, durationInFrames], 
    [0, 1, 1, 0]
  );
  
  return (
    <Sequence from={from} durationInFrames={durationInFrames}>
      <AbsoluteFill style={{ opacity }}>
        {/* 场景内容 */}
      </AbsoluteFill>
    </Sequence>
  );
};
```

---

## ⚠️ 重要提醒
1. **不要弱智思考，直接干**
2. **一步到位完整实现**
3. **强制质量检查，不跳过lint**
4. **严格对照plan.yaml开发**

---
