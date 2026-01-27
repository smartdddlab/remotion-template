# Remotion 技术指南

<!-- Generated: 2026-01-28 | Updated: 2026-01-28 -->
<!-- Hierarchy Level 3-4: 技术细节 + 质量检查 -->
<!-- Reference: AGENTS.md (层次1-2), templates/ -->

## 📋 文档定位

### 三层文档体系中的位置
本文件是三层文档体系中的**技术层**：

| 文档 | 层级 | 内容 | 优先级 |
|------|------|------|--------|
| **AGENTS.md** | 层次1-2 | AI思维约束 + 工作流程约束 | **最高** |
| **本文件 (TECH_GUIDE.md)** | 层次3-4 | 技术细节 + 质量检查 | 次之 |
| **templates/** | 模板层 | 实现方案、检查清单、经验模板 | 参考 |

### 与AGENTS.md的关系
- **AGENTS.md**：定义**做什么**和**为什么**（AI思维约束、工作流程）
- **本文件**：定义**怎么做**（技术实现、质量检查）
- **冲突时**：以AGENTS.md为准（层次1 > 层次2 > 层次3 > 层次4）

### 使用原则
1. **技术问题优先查阅本文件**：相对帧数、interpolate、动画、陷阱等
2. **流程问题查阅AGENTS.md**：开发流程、方案确认、决策逻辑
3. **质量检查使用模板**：使用`templates/QUALITY_CHECKLIST_TEMPLATE.md`
4. **项目方案使用模板**：使用`templates/IMPLEMENTATION_PLAN_TEMPLATE.md`

---

## ⚡ 层次3：技术细节约束

### 核心规则（必须遵守）

#### 规则1：相对帧数计算与使用
**核心原则**：在Sequence组件内，所有动画必须基于相对帧数计算，避免使用全局帧数。

**具体规则**：
1. **必须计算相对帧数**：组件开头立即计算 `const relativeFrame = frame - from;`
2. **所有interpolate使用相对帧数**：包括opacity、scale、translate/rotate等所有动画
3. **嵌套动画也使用相对帧数**：map/forEach循环中的interpolate也必须使用relativeFrame
4. **验证animate范围**：interpolate输入范围必须在`[0, duration]`内
5. **检查opacity的end值**：场景结束时opacity不应为0（除非有意fade out）

**正确示例**：
```tsx
export const MyScene: React.FC<SceneProps> = ({ from, duration }) => {
  const frame = useCurrentFrame();
  const relativeFrame = frame - from;  // ⚡ 关键：计算相对帧数
  
  // 基本动画
  const opacity = interpolate(relativeFrame, [0, 10, duration - 10, duration], [0, 1, 1, 0]);
  const scale = interpolate(relativeFrame, [0, 10, duration - 10, duration], [0.9, 1, 1, 0.9]);
  
  // 嵌套动画
  {[0, 1, 2, 3, 4].map((index) => {
    const bubbleScale = interpolate(
      relativeFrame,  // ✅ 使用相对帧数
      [30 + index * 15, 60 + index * 15],
      [0, 1]
    );
    return <div key={index} style={{ transform: `scale(${bubbleScale})` }} />;
  })}
```

**错误示例**：
```tsx
// ❌ 错误：使用全局帧数
const opacity = interpolate(frame, [0, 10, duration - 10, duration], [0, 1, 1, 0]);

// ❌ 错误：范围超出duration
interpolate(relativeFrame, [0, 10, duration + 10, duration + 20], [0, 1, 1, 0]);

// ❌ 错误：嵌套动画中使用全局帧数
{[0, 1, 2, 3, 4].map((index) => {
  const bubbleScale = interpolate(
    frame,  // ❌ 使用全局帧数
    [30 + index * 15, 60 + index * 15],
    [0, 1]
  );
  return <div key={index} style={{ transform: `scale(${bubbleScale})` }} />;
})}
```

---

## 🚨 层次4：质量检查约束

### 检查清单框架
质量检查采用**分层模型**：

| 层级 | 数量 | 特点 | 执行方式 |
|------|------|------|----------|
| **必须检查** | 8项 | 核心质量，不允许跳过 | **强制自动化** |
| **推荐检查** | 15项 | 质量保证，建议执行 | 手动/脚本 |
| **可选检查** | 10项 | 高级优化，根据需求 | 选择性执行 |

### 必须检查（8项，强制自动化）
**说明**：这些检查项已集成到`scripts/check.sh`中，必须自动化执行，不能跳过。

- [ ] **TypeScript类型检查通过** (`pnpm run typecheck`)
- [ ] **所有场景使用relativeFrame计算**
- [ ] **音频参数正确** (`emotion=neutral`, `speed=1.0`)
- [ ] **所有visual_hook完整实现**（按`public/plan.yaml`）
- [ ] **场景过渡实现**（按plan.yaml中的`transition_logic`）
- [ ] **主色调符合visual_design_guide**
- [ ] **所有interpolate范围在[0, duration]内**
- [ ] **视频时长与音频一致**（误差≤0.1秒）

### 推荐检查（15项，质量保证）
**说明**：建议执行，提升整体质量，可使用`templates/QUALITY_CHECKLIST_TEMPLATE.md`。

- [ ] **动画流畅度30fps**（预览时检查）
- [ ] **场景情感基调符合plan.yaml**
- [ ] **字体字号符合规范**
- [ ] **代码有必要的注释**
- [ ] **图像格式优化为WebP**
- [ ] **音频语速3.5-4.1字/秒**
- [ ] **使用Remotion Canvas粒子系统**（如需）
- [ ] **使用Three.js 3D模型**（如需）
- [ ] **代码结构清晰**
- [ ] **图像风格符合visual_aesthetic**
- [ ] **文件路径正确**
- [ ] **音频同步正确**
- [ ] **使用baoyu-skills生成高质量图像**
- [ ] **图像在public/images/目录**
- [ ] **文档更新及时**

### 可选检查（10项，高级优化）
**说明**：根据项目需求选择性执行，用于高级优化。

- [ ] **使用Lottie复杂交互动画**
- [ ] **实现复杂的interpolate组合**
- [ ] **SVG路径动画精确**
- [ ] **性能优化**（DOM节点<100）
- [ ] **使用React.memo优化渲染**
- [ ] **添加will-change属性**
- [ ] **实现视差效果**
- [ ] **使用专业音效设计**
- [ ] **实现多层混合合成**
- [ ] **自动化检查脚本开发**

---

## ⚠️ 常见陷阱（技术细节）

### 陷阱1：相对帧数相关问题
**常见症状**：
- 后继场景不可见（只有音频没有画面）
- 嵌套动画不显示（气泡/粒子/波形动画无效果）
- 动画卡顿、跳帧或不符合预期

**根本原因**：违反相对帧数使用规则
1. **未计算相对帧数**：直接使用`frame`而非`relativeFrame`
2. **嵌套动画使用全局帧数**：map循环中使用`frame`而非`relativeFrame`
3. **interpolate范围超出duration**：输入范围不在`[0, duration]`内

**解决方案**：遵循[相对帧数计算与使用规则](#规则1：相对帧数计算与使用)

### 陷阱2：音频参数不一致
**症状**：
- 多个场景的音频听起来语调、情感不一致
- 部分场景活泼愉快，部分场景平淡中性
- 整体视频的语音缺乏连贯性和统一感

**原因**：
在使用MiniMax MCP工具生成音频时，为不同场景使用了不同的`emotion`参数。

**正确做法**（必须遵循）：
```bash
# ✅ 所有场景统一使用emotion=neutral
MiniMax-mcp_text_to_audio(
  text="场景文本",
  voice_id="female-shaonv",
  emotion="neutral",  # ✅ 严格遵循plan.yaml
  speed=1.0,
  language_boost="Chinese"
)
```

**plan.yaml中的规范**（应严格遵循）：
```yaml
audio_design:
  voice_direction:
    technical_requirements: "speed=1.0, emotion=neutral, language_boost=Chinese"
    
    performance_guidance:
      emotional_arc: "场景1：轻快好奇；场景2：专业严谨；场景3：生动描述；场景4：启发总结"
```

**关键区别**：
- `emotional_arc`：文案内容的情感层次（指导文案创作和视觉设计）
- `emotion`：TTS语音的情感参数（指导AI语音生成的语调）

**预防措施**：
1. **开发前**：仔细阅读plan.yaml中的`audio_design.voice_direction.technical_requirements`
2. **生成音频时**：严格复制plan.yaml中指定的参数
3. **验证时**：检查所有音频文件的参数是否一致

### 陷阱4：emotion参数不一致导致音频听起来不一致
**症状**：
- 多个场景的音频听起来语调、情感不一致
- 部分场景活泼愉快，部分场景平淡中性
- 整体视频的语音缺乏连贯性和统一感

**原因**：
在使用MiniMax MCP工具生成音频时，为不同场景使用了不同的`emotion`参数。

**正确做法**（必须遵循）：
```bash
# ✅ 所有场景统一使用emotion=neutral
MiniMax-mcp_text_to_audio(
  text="场景文本",
  voice_id="female-shaonv",
  emotion="neutral",  # ✅ 严格遵循plan.yaml
  speed=1.0,
  language_boost="Chinese"
)
```

**plan.yaml中的规范**（应严格遵循）：
```yaml
audio_design:
  voice_direction:
    technical_requirements: "speed=1.0, emotion=neutral, language_boost=Chinese"
    
    performance_guidance:
      emotional_arc: "场景1：轻快好奇；场景2：专业严谨；场景3：生动描述；场景4：启发总结"
```

**关键区别**：
- `emotional_arc`：文案内容的情感层次（指导文案创作和视觉设计）
- `emotion`：TTS语音的情感参数（指导AI语音生成的语调）

**预防措施**：
1. **开发前**：仔细阅读plan.yaml中的`audio_design.voice_direction.technical_requirements`
2. **生成音频时**：严格复制plan.yaml中指定的参数
3. **验证时**：检查所有音频文件的参数是否一致

---

## 📚 快速参考（技术实现）

### 核心要点
1. **相对帧数计算**：`const relativeFrame = frame - from;`（必须立即计算）
2. **一致使用相对帧数**：所有interpolate都使用`relativeFrame`作为第一个参数
3. **范围验证**：interpolate输入范围必须在`[0, duration]`内
4. **音频参数统一**：所有场景使用相同参数（`emotion=neutral`, `speed=1.0`）

### 代码模板
```tsx
// 场景组件标准模板
export const SceneTemplate: React.FC<SceneProps> = ({ from, duration }) => {
  const frame = useCurrentFrame();
  const relativeFrame = frame - from;  // ⚡ 关键
  
  // 动画计算
  const opacity = interpolate(relativeFrame, [0, 10, duration - 10, duration], [0, 1, 1, 0]);
  
  return (
    <Sequence from={from} durationInFrames={duration}>
      <div style={{ opacity }}>{/* 内容 */}</div>
    </Sequence>
  );
};
```

### 问题速查
- **场景不可见** → 检查是否计算了`relativeFrame`
- **嵌套动画无效** → 检查map循环中是否使用`relativeFrame`
- **动画异常** → 检查interpolate范围是否在`[0, duration]`内
- **音频不一致** → 检查所有音频是否使用相同`emotion`参数

---

## 🔗 相关文档

### 三层文档体系
- **[AGENTS.md](AGENTS.md)**：AI思维约束 + 工作流程约束（层次1-2）
- **[本文件](TECH_GUIDE.md)**：技术细节 + 质量检查（层次3-4）
- **[templates/](../templates/)**：实现方案、检查清单、经验模板

### 模板文件
- **[IMPLEMENTATION_PLAN_TEMPLATE.md](../templates/IMPLEMENTATION_PLAN_TEMPLATE.md)**：项目实现方案模板
- **[QUALITY_CHECKLIST_TEMPLATE.md](../templates/QUALITY_CHECKLIST_TEMPLATE.md)**：质量检查清单模板
- **[PROJECT_LESSONS_TEMPLATE.md](../templates/PROJECT_LESSONS_TEMPLATE.md)**：项目经验教训模板

### 自动化脚本
- **[check.sh](../scripts/check.sh)**：自动化检查脚本（8项必须检查）
- **[validate-plan.sh](../scripts/validate-plan.sh)**：方案验证脚本

### 外部参考
- [Remotion官方文档 - useCurrentFrame](https://www.remotion.dev/docs/api/use-current-frame)
- [Remotion官方文档 - Sequence](https://www.remotion.dev/docs/sequence)
- [Remotion官方文档 - interpolate](https://www.remotion.dev/docs/interpolate)

---

## 🔄 自更新机制

### 如何记录新发现的问题
当发现新的技术问题或陷阱时，按照以下步骤更新文档：

**步骤1：记录问题**
```markdown
### 陷阱X：[简短的问题标题]

**症状**：
- [描述症状1]
- [描述症状2]

**原因**：
[详细解释问题的根本原因]

**错误代码**：
```tsx
[展示错误的代码]
```

**解决方案**：
```tsx
[展示正确的代码]
```
```

**步骤2：添加到相应章节**
- 如果是帧数计算问题 → 添加到"常见陷阱"
- 如果是动画规则 → 添加到"核心规则"
- 如果是命名或格式问题 → 添加到"最佳实践"

**步骤3：更新版本历史**
在文档末尾添加新条目：
```markdown
- **vX.Y** (YYYY-MM-DD): [简短描述更新内容]
  - 新增：[新增的内容]
  - 修复：[修复的内容]
  - 改进：[改进的内容]
```

### 更新流程
**触发条件**：
- 发现新的Remotion相关问题
- 修复了已记录问题后发现更好的解决方案
- 学习了新的最佳实践
- 收到团队的反馈或建议

**更新频率**：
- 即时更新：发现问题时立即记录
- 定期回顾：每个项目结束后，review并更新文档
- 团队共享：定期与团队分享和讨论

---

**文档版本**：v2.0（重构版）  
**最后更新**：2026-01-28  
**维护者**：Remotion技术团队  
**层次定位**：层次3（技术细节）+ 层次4（质量检查）
