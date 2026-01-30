---
name: video-director
description: 专业视频制作框架，将脚本转化为结构化生产计划，提供创意指导、质量检查点和技术无关的设计语言。
---

# 视频导演

## 概述

使用纯设计语言（技术无关）将视频脚本转化为结构化生产计划。提供创意指导、质量检查点和跨部门协调。

**核心原则：** 通用动画词汇专注于 **WHAT**（创意愿景）而非 **HOW**（实现）。

## 强制工作流

**使用此 skill 时必须：**
1. **立即创建 TodoWrite 任务**（不可跳过）
2. **按顺序执行验证步骤**
3. **生成 validation-report.yaml**
4. **置信度 < 85% 时阻断并继续修订**

```typescript
// ✅ 正确调用方式
Skill("video-director")
→ 自动创建 TodoWrite 任务
→ 执行 6 步验证流程
→ 生成 validation-report.yaml
→ 置信度 ≥ 85% 方可进入下一阶段

// ❌ 错误调用方式
Skill("video-director")
→ 直接生成 plan.yaml (跳过验证)
```

## 验证流程（强制执行）

```yaml
验证步骤（必须按顺序执行）:
1. TodoWrite: 创建验证任务清单 ✅
2. 生成 plan.yaml 初稿
3. TodoWrite: 执行第一轮完整性质疑 ✅
4. 修订 FAIL 项
5. TodoWrite: 执行第二轮可行性质疑（4+场景） ✅
6. 修订高风险项
7. TodoWrite: 执行第三轮严谨性质疑（8+场景） ✅
8. 计算置信度 → 必须 ≥ 85%
9. 生成 validation-report.yaml
10. 输出最终 plan.yaml
```

## 何时使用

### ✅ 适用场景
- 用户提供**详细脚本**或**具体内容大纲**
- 需要包含场景、音频、视觉设计的结构化生产计划
- 需要质量检查点和创意协调
- 需要技术无关的创意指导
- 需要智能风格处理（自动识别、模糊风格澄清）

### ❌ 不适用场景
- 仅提供主题而无具体内容的请求（如"做个AI视频"）
- 需要实体拍摄团队的真实拍摄
- 无需前期制作即需要实时剪辑
- 简单的社交媒体短片
- 需要特定技术实现

**内容要求：** 必须包含具体内容（脚本、场景分解、关键点）。拒绝仅提供主题/标题的请求。

## 核心模式

**结构化方法：**
- **输入：** 脚本/内容 → **过程：** 分析 → 通用设计 → 质量检查点 → **输出：** 完整生产计划
- **导演角色：** 专注于WHAT（创意愿景、情感、时机）
- **实现者角色：** 决定HOW（技术、代码结构）

## 框架方法论

1. **分析需求**（视频类型、主题、受众、风格识别）
2. **规划创意元素**（脚本结构、视觉风格、音频、节奏）
3. **协调各部门**（脚本、音频、视觉的一致性）
4. **生成生产计划**（所有团队的结构化指导）
5. **设置质量检查点**（每个阶段的审查关口）
6. **执行对抗式验证**（参照 validation-checklist.yaml 和 validation-report-template.yaml）

**风格处理：**
- 明确风格 → 确认后应用
- 模糊风格 → 必须澄清后才能继续
- 无风格 → 自动推荐并带有置信度检查
- 未定义风格 → 提供最接近的选项

## 快速参考

| 任务 | 参考文档 |
|------|-----------|
| 快速开始指南 | [docs/quick-start-guide.md](docs/quick-start-guide.md) |
| 导演决策框架 | [docs/director-decision-framework.md](docs/director-decision-framework.md) |
| 完整YAML模板 | [docs/complete-template-reference.md](docs/complete-template-reference.md) |
| 风格系统与映射 | [docs/style-knowledge-base.md](docs/style-knowledge-base.md) |
| 风格示例 | [docs/style-examples.md](docs/style-examples.md) |
| Remotion集成 | [docs/implementation-guide.md](docs/implementation-guide.md) |
| 故障排除 | [docs/troubleshooting-guide.md](docs/troubleshooting-guide.md) |
| **对抗式验证清单** | [validation-checklist.yaml](validation-checklist.yaml) |
| **验证报告模板** | [validation-report-template.yaml](validation-report-template.yaml) |

## 风格系统 (v5.2+)

**维度：** 文化（中国风、日式和风等）、时代（古典、现代等）、流派（极简主义、赛博朋克等）、技术（电影感、平面设计等）

**智能处理：**
- 带置信度评分的自动识别
- 模糊风格澄清（引导用户澄清）
- 风格冲突检测与解决
- 基于置信度的交互（高>80%自动应用，中50-80%提供选项，低<50%要求明确指定）

**YAML用法：**
```yaml
style_definition:
  cultural_style: "chinese"
  era_style: "modern"
  genre_style: "minimalist"
```

## 设计语言

**通用动画词汇：** 技术无关的设计语言，专注于创意意图而非实现方式。

**核心原则：**
- 技术独立性
- 创意指导优先
- 实现灵活性
- 质量一致性

## 对抗式验证系统 (v6.0+)

**强制约束：**
- ✅ 生成 plan.yaml **后**，**必须立即**执行 TodoWrite 验证任务
- ✅ 验证流程不可跳过，任何跳过都会导致 plan.yaml 视为**不合格**
- ✅ 置信度 < 85% 时，**阻断**进入下一阶段
- ✅ 必须生成 `validation-report.yaml` 记录完整验证过程

### 验证流程

```yaml
强制执行步骤：
1. TodoWrite("执行对抗式验证", status: "in_progress")
2. 确定验证级别（simple/standard/complex）
3. TodoWrite("第一轮完整性质疑", status: "in_progress")
4. 执行分级对抗验证（1-3轮）
5. 修订所有 FAIL 项并记录
6. TodoWrite("计算置信度", status: "in_progress")
7. 计算置信度（必须 ≥ 85%）
8. TodoWrite("生成验证报告", status: "in_progress")
9. 输出 validation-report.yaml
10. TodoWrite("验证完成", status: "completed")
```

**未完成验证就输出 plan.yaml = 违反工作流 = 不合格**

### 验证流程

```yaml
验证步骤：
1. 生成plan.yaml初稿
2. 确定验证级别（simple/standard/complex）
3. 执行分级对抗验证（1-3轮）
4. 修订FAIL项并记录
5. 计算置信度（≥85%方可通过）
6. 输出validation-report.yaml
```

### 验证级别

| 级别 | 条件 | 轮数 | 说明 |
|------|------|------|------|
| simple | ≤3场景, ≤60s | 1轮 | 核心检查 |
| standard | 4-7场景 或 60-180s | 2轮 | 完整+可行性 |
| complex | ≥8场景 或 >180s | 3轮 | 完整三轮 |

### 四大验证维度

1. **音频维度** (30%)：人声时长匹配、参数一致性、BGM兼容性
2. **视觉维度** (25%)：风格定义、色彩策略、Baoyu映射
3. **叙事维度** (20%)：结构完整性、情感曲线、信息密度
4. **技术维度** (25%)：时长规范、跨阶段依赖、素材可行性

### 关键检查项（必须PASS）

- **A1**: 人声时长匹配验证（字数÷3.8字/秒）
- **V1**: 风格定义完整性
- **T3**: 跨阶段依赖验证

### 置信度计算

使用加权系统：
```
dimension_score = 100 - (failed_weight / total_weight × 100)
total_confidence = Σ(dimension_score × dimension_weight)
```

- critical检查项权重：3.0
- major检查项权重：2.0
- minor检查项权重：1.0

**通过标准：**
- 总置信度 ≥ 85%
- 所有critical检查项PASS

### 验证文件

生成以下文件：
- `plan.yaml` - 创意方案（必须通过验证）
- `validation-report.yaml` - 验证报告（含修订历史）

### 对抗式思维问题示例

每轮验证必须回答：
- "是否遗漏了关键检查项？"
- "这个设计是否在偷懒？"
- "如果我是挑剔的观众会怎么批评？"
- "是否有形式化填充？"

详见：
- [validation-checklist.yaml](validation-checklist.yaml) - 完整自检清单
- [validation-report-template.yaml](validation-report-template.yaml) - 验证报告模板

## 相关资源

请参阅docs/目录以获取完整的文档、模板、示例和实现指南。

| 任务 | 参考文档 |
|------|-----------|
| 快速开始指南 | [docs/quick-start-guide.md](docs/quick-start-guide.md) |
| 导演决策框架 | [docs/director-decision-framework.md](docs/director-decision-framework.md) |
| 完整YAML模板 | [docs/complete-template-reference.md](docs/complete-template-reference.md) |
| 风格系统与映射 | [docs/style-knowledge-base.md](docs/style-knowledge-base.md) |
| 风格示例 | [docs/style-examples.md](docs/style-examples.md) |
| Remotion集成 | [docs/implementation-guide.md](docs/implementation-guide.md) |
| 故障排除 | [docs/troubleshooting-guide.md](docs/troubleshooting-guide.md) |
| **对抗式验证清单** | [validation-checklist.yaml](validation-checklist.yaml) |
| **验证报告模板** | [validation-report-template.yaml](validation-report-template.yaml) |