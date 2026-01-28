---
name: video-director
description: Use when user provides video script/storyboard/theme and needs professional video production plan with structured scenes, audio narration, visual design, quality checkpoints, timeline coordination, and creative direction
---

# Video Director

## Overview

Production framework that transforms video scripts into structured plans with clear instructions for all creative departments, quality checkpoints, and implementation guidance.

**Key Principle:** This skill uses **pure design language** - no technology-specific implementation details. All visual and motion descriptions use universal animation vocabulary that can be implemented in any animation platform or programming framework.

## 🚀 30秒速查卡

1. **分析输入**：视频类型 + 主题 + 情感基调 + 目标时长 + 目标受众 + **风格识别**
2. **决策树推荐**：叙事结构 → 风格策略 → 色彩策略 → 音乐风格 → 节奏策略 → 语言深度
3. **填写YAML**：创意愿景 → 风格定义 → 剧本设计 → 音频设计 → 视觉艺术 → 后期制作
4. **4阶段审核**：脚本审核 → 风格审核 → 音频审核 → 视觉审核 → 最终审核

## 🔄 近期改进 (v5.2)

**智能风格系统增强** - 2026年1月28日更新：

### 🎯 核心改进

1. **详细的置信度计算模型**
   - 添加权重分配：keyword_match(40%), content_relevance(25%), emotion_alignment(20%), video_type_fit(15%)
   - 明确的评分标准和计算公式
   - 改进的决策阈值：高(>80%)、中(50-80%)、低(<50%)

2. **完整的风格冲突解决系统**
   - 冲突检测矩阵：文化-时代、文化-流派、时代-流派、流派-内容冲突
   - 冲突严重程度分级：critical/major/moderate/minor
   - 完整的解决流程：检测→分析→生成方案→用户交互→实施验证

3. **扩展的模糊风格处理**
   - 完整模糊术语词典：视觉感受类、情感氛围类、质量描述类
   - 多维度澄清流程：视觉、情感、功能、文化维度
   - 渐进细化策略：从大类到具体的多轮澄清

### 🛠 功能增强

4. **动态默认组合优化**
   - 基于内容深度的动态默认表：传统文化、科技、教育、治愈、商业主题细分
   - 用户偏好调整机制：时代偏好、复杂程度、情感强度、文化倾向调整

5. **完整的Baoyu-skills映射**
   - 所有风格到Baoyu-skill的完整映射表
   - 多层映射策略：一级映射→二级参数→三级元素
   - 备选映射表：主技能不可用时使用备选技能

6. **明确的向后兼容性**
   - 四维风格体系说明：文化、时代、流派、技术风格
   - 优先级层次：用户指定 > 风格映射 > 传统映射 > 默认值
   - 覆盖规则和迁移指南：从旧系统平滑迁移到新系统

### 📋 质量保证

7. **系统验证机制**
   - 风格定义完整性检查
   - 风格组合合理性验证
   - 向后兼容性测试
   - 用户体验流程优化

## When to Use

### ✅ 使用条件（必须同时满足）

1. **必须提供具体内容**
   - 完整的视频脚本/文案
   - 详细的场景描述（逐场景分解）
   - 或：详细的主题内容描述（至少包含核心信息、关键要点、预期传达的内容）

2. **内容充足性标准**
   - 能够清晰提取核心主题
   - 能够确定目标受众
   - 能够推导出情感基调

### ❌ 停止工作条件

**遇到以下情况必须停止并要求用户提供内容：**

| 情况         | 示例                       | 必须响应                        |
| ------------ | -------------------------- | ------------------------------- |
| 仅提供主题词 | "做一个关于人工智能的视频" | ❌ 停止，要求提供详细内容       |
| 仅提供标题   | "做一个量子计算科普视频"   | ❌ 停止，要求提供文案或脚本     |
| 内容过于模糊 | "做一个酷炫的科技感视频"   | ❌ 停止，要求提供具体内容描述   |
| 无内容输入   | 用户未提供任何文本         | ❌ 停止，要求提供脚本或内容大纲 |

**正确的用户输入示例：**

```
✅ "场景一：介绍量子纠缠的概念... 场景二：展示实验过程..."
✅ "视频内容：1. 什么是光合作用 2. 光合作用的过程 3. 重要意义..."
✅ "核心信息：全球变暖的原因。要点：1. 温室气体 2. 化石燃料 3. 解决方案..."
```

**错误的用户输入示例（必须拒绝）：**

```
❌ "做个关于宇宙的视频"
❌ "帮我做个科普视频"
❌ "科技感风格的视频"
```

### 强制停止话术模板

当检测到内容不足时，使用以下话术：

> **我需要您提供具体的视频内容才能继续。**
>
> 您目前只提供了主题/标题，但我需要详细的内容来制作专业的视频规划。
>
> 请提供以下任一项：
>
> 1. **完整的视频脚本/旁白文案**（逐字稿）
> 2. **详细的场景大纲**（每个场景要讲什么内容）
> 3. **核心内容要点**（关键信息、要点列表、预期传达的知识点）
>
> 示例：
>
> - ✅ "第一场景介绍XX概念，说明... 第二场景展示..."
> - ✅ "视频要讲解光合作用，包含：1. 定义 2. 过程 3. 意义"

---

**Use when:**

- User provides **detailed** video script with scene breakdowns
- User provides **specific** content outline with key messages
- Need structured production plan with scenes, audio, visual design
- Require quality checkpoints and department coordination
- Converting **concrete text** to professional video production framework
- Want technology-agnostic creative direction
- Need intelligent style handling (automatic recognition, vague style clarification, confidence-based recommendations)

**Do NOT use for:**

- **Theme-only requests without content** (e.g., "make a video about AI")
- Live-action shooting with physical crew coordination
- Real-time editing without pre-production planning
- Simple social media clips without structured requirements
- Technology-specific implementation guidance (see implementation guides instead)

## Core Pattern

**Without Framework (Ad-hoc)**

```
Input: "Make a 60s video about quantum computing"
Process: Ad-hoc scene creation
Output: Inconsistent elements, unclear instructions, quality issues
```

**With Framework (Structured)**

```
Input: "Make a 60s video about quantum computing"
Process: Structured analysis → Universal design language → Quality checkpoints
Output: Complete production plan with pure creative direction (technology-agnostic)
```

**Design Philosophy:**

- Director focuses on **WHAT** (creative vision, emotion, timing)
- Implementer decides **HOW** (technology choice, code structure)
- Universal animation vocabulary bridges the gap

## Framework Methodology

**Director's Decision Process:**

1. **Analyze Requirements** → Video type, theme, emotional tone, target audience, **style recognition**
2. **Plan Creative Elements** → Script structure, visual style (following style constraints), audio approach, pacing
3. **Coordinate Departments** → Ensure consistency across script, audio, visual design
4. **Generate Production Plan** → Structured guidance for all implementation teams
5. **Set Quality Checkpoints** → Review gates at each production stage

**Style Recognition Sub-process:**

- **Explicit style**: User specifies predefined style → apply directly with confirmation
- **Vague style**: User uses ambiguous terms → must clarify before proceeding
- **No style**: User doesn't specify → automatically recommend based on content with confidence check
- **Undefined style**: User requests style not in library → provide closest options or request clarification

See [quick-start-guide.md](quick-start-guide.md) for workflow and [director-decision-framework.md](director-decision-framework.md) for decision framework.

## Quick Reference

| Task                                            | Reference File                                                   |
| ----------------------------------------------- | ---------------------------------------------------------------- |
| **Director's decision making**                  | [director-decision-framework.md](director-decision-framework.md) |
| **Complete YAML template**                      | [complete-template-reference.md](complete-template-reference.md) |
| **Style system & mapping**                      | [style-knowledge-base.md](style-knowledge-base.md)               |
| **Style examples (Chinese/Cyberpunk/Japanese)** | [style-examples.md](style-examples.md)                           |
| **Step-by-step quick start**                    | [quick-start-guide.md](quick-start-guide.md)                     |
| **Remotion integration guide** (optional)       | [implementation-guide.md](implementation-guide.md)               |
| **Troubleshooting & visual upgrades**           | [troubleshooting-guide.md](troubleshooting-guide.md)             |
| **Complete examples**                           | [complete-examples.md](complete-examples.md)                     |

### New: Style System (v5.1+)

**视频风格框架**已扩展，支持文化、时代、流派三大维度：

- **文化风格**：中国风、和风、韩风、欧美风、阿拉伯风、非洲风、拉丁美洲风
- **时代风格**：古典、现代、未来、复古、蒸汽朋克
- **流派风格**：极简、赛博朋克、蒸汽波、波普、抽象、超写实、卡通

#### 智能风格处理流程（强制执行约束）

作为导演，你必须遵循严格的风格处理逻辑以确保视频风格与内容完美匹配：

**阶段1：用户输入分析**

- 检查用户是否明确指定了预定义风格（如"中国风"、"赛博朋克"）
- 识别用户是否使用了模糊风格描述（如"酷炫的"、"专业的"）
- 分析文本内容主题、情感基调、视频类型

**阶段2：智能风格决策**

```yaml
# 决策流程（强制执行）
decision_flow:
  # 场景1：用户明确指定预定义风格
  explicit_style_found:
    - 直接使用指定风格
    - 展示风格映射给用户确认

  # 场景2：用户指定了模糊风格
  vague_style_found:
    - 必须引导用户澄清具体含义
    - 提供2-3个最接近的预定义风格选项
    - 避免猜测，确保明确理解

  # 场景3：用户未指定风格
  no_style_found:
    - 基于内容主题、情感基调、视频类型自动推荐
    - 计算推荐置信度
    - 根据置信度决定下一步操作
```

**阶段3：置信度驱动的用户交互**

```yaml
# 置信度决策规则（强制执行）
confidence_based_interaction:
  high_confidence: "总置信度 > 80% → 自动应用推荐风格，询问用户确认"
  medium_confidence: "总置信度 50-80% → 提供推荐选项，让用户选择"
  low_confidence: "总置信度 < 50% → 必须停止，请求用户明确指定风格"

# 模糊风格处理（强制执行）
vague_style_handling:
  cool: "请具体说明：是科技感（cyberpunk）还是现代感（modern minimalist）？"
  modern: "请具体说明：是现代极简（minimalist）还是现代科技（tech）？"
  professional: "请具体说明：是专业极简（minimalist）还是商业风（corporate graphic）？"
  creative: "请具体说明：是艺术抽象（abstract）还是手绘创意（illustrative）？"
  elegant: "请具体说明：是典雅中国风（chinese）还是简约和风（japanese minimalist）？"

# 主动推荐策略
proactive_recommendation:
  triggers:
    - 用户没有指定任何风格时
    - 用户指定了模糊风格需要澄清时
    - 内容主题非常明确时（如"量子物理"→cyberpunk）
  format: "基于您的[内容主题/情感基调/视频类型]，我推荐使用**[风格名称]**风格，理由：[匹配说明]"
```

**阶段4：风格冲突检测与解决**

- 检测不合理组合（如chinese + cyberpunk、classical + vaporwave）
- 自动警告并建议调整方案
- 向用户说明冲突，请求选择主导风格

**阶段5：最终确认与映射**

- 用户确认风格选择后，应用完整的风格映射
- 将风格定义映射到视觉元素、色彩、排版、动画
- 集成到YAML模板的`style_definition`部分

**强制约束**：

1. **自动识别**：用户未指定风格时必须通过文本自动识别推荐
2. **无法判断时停止**：置信度<50%时必须停止并让用户确认
3. **模糊风格引导**：用户提出泛风格时必须引导澄清，避免误解
4. **主动推荐**：在适当时机主动给出推荐建议
5. **风格冲突检测**：自动检测不合理风格组合并解决

**使用方式**：在 YAML 模板中定义 `style_definition`，系统自动映射到视觉元素。

**示例**：

```yaml
style_definition:
  cultural_style: "chinese"
  era_style: "modern"
  genre_style: "minimalist"
  style_rationale: "用中国传统美学（水墨、留白）结合现代极简设计，传递传统文化的现代诠释"
```

详见：[style-knowledge-base.md](style-knowledge-base.md)、[style-examples.md](style-examples.md) 和完整的决策流程在 [director-decision-framework.md](director-decision-framework.md)

## Common Mistakes

1. **Skipping framework analysis** → Inconsistent creative vision across departments
2. **Ignoring cross-stage dependencies** → Causes rework and timeline issues
3. **Bypassing quality checkpoints** → Final product quality suffers
4. **Unclear department instructions** → Implementation teams lack clear guidance
5. **Inconsistent audio-visual timing** → Scene durations don't match audio pacing
6. **Mixing design with implementation** → Director should not specify code/technology details
7. **Using vague motion descriptions** → Use specific universal animation vocabulary
8. **Ignoring visual consistency** → Disjointed scenes without cohesive design language
9. **Overusing effects** → Visual clutter that distracts from core message
10. **Poor color harmony** → Colors that clash or fail to support emotional tone
11. **Weak composition** → Centralized elements without visual hierarchy
12. **Inconsistent animation timing** → Jarring transitions between different easing curves
13. **Neglecting visual motifs** → Missing recurring elements that create brand identity
14. **Mismatched visual complexity** → Simple and complex visuals mixed without narrative reason
15. **Ignoring style constraints** → Failing to follow mandatory style handling workflow
16. **Guessing vague styles** → Applying style without clarifying ambiguous user requests
17. **Skipping confidence check** → Proceeding with low-confidence style recommendations
18. **Missing style conflict detection** → Using incompatible style combinations without warning
19. **Not providing proactive recommendations** → Failing to suggest styles when user doesn't specify
20. **Bypassing user confirmation** → Applying styles without proper user validation

## Universal Animation Vocabulary (Quick Reference)

### Entrance Effects

- `fade_in` - Opacity 0→1
- `slide_from_[direction]` - Direction: left/right/top/bottom
- `scale_up` - Scale 0→1
- `rotate_in` - Rotation entry
- `typewriter` - Character-by-character reveal
- `particle_swarm` - Multiple small elements converging
- `morph_in` - Shape transformation entry
- `staggered_reveal` - Elements appear in sequence with delay
- `bloom_open` - Radial expansion from center
- `lens_flare` - Light burst entry

### Emphasis Effects

- `pop` - Spring scale bounce
- `pulse` - Opacity/scale oscillation
- `glow_intensify` - Brightness increase
- `color_shift` - Hue transition
- `shake` - Vibration
- `particle_emission` - Small elements radiating from object
- `lightning_strike` - Sharp, intense flash
- `ripple_effect` - Concentric wave expansion
- `chromatic_aberration` - Color separation distortion
- `motion_blur` - Directional blur during movement

### Exit Effects

- `fade_out` - Opacity 1→0
- `slide_to_[direction]` - Exit direction
- `scale_down` - Shrink to 0
- `dissolve` - Gradual disappearance
- `particle_dissipate` - Break into particles that drift away
- `implosion` - Inward collapse with distortion
- `pixelate_out` - Resolution degradation to exit
- `energy_drain` - Color/saturation drain to exit

### Transitions

- `cut` - Instant switch
- `fade` - Crossfade
- `dissolve` - Blend transition
- `wipe_[direction]` - Wipe effect
- `match_cut` - Visual continuity cut
- `morph_transition` - Shape/object transformation between scenes
- `particle_transition` - Scene dissolves into particles that reform new scene
- `lens_zoom` - Depth of field zoom transition
- `data_mesh` - Grid/wireframe transformation
- `liquid_flow` - Fluid-like scene transition

### 3D Transformations

- `rotate_3d_[axis]` - Rotation around X/Y/Z axis
- `orbit_around` - Circular path movement
- `depth_parallax` - Foreground/background differential movement
- `perspective_shift` - Camera angle change
- `extrude_in` - 2D to 3D extrusion

### Visual Effects

- `glitch_effect` - Digital corruption artifacts
- `vhs_distortion` - Analog tape artifacts
- `hologram_display` - Translucent, scanline appearance
- `neon_glow` - Electric-colored edge glow
- `depth_of_field` - Selective focus blur
- `reflection_surface` - Mirror/water-like reflections
- `shadow_play` - Dramatic shadow manipulation

### Timing Descriptors

- **Duration**: `instant` / `quick(0.3s)` / `medium(0.5s)` / `slow(0.8s+)` / `epic(2s+)`
- **Easing**: `linear` / `smooth` / `spring` / `bounce` / `dramatic` / `elastic` / `anticipate`
- **Intensity**: `subtle` / `medium` / `strong` / `extreme`
- **Rhythm**: `steady` / `staggered` / `randomized` / `syncopated`

### 高级动画概念（技术无关专业术语）

#### 关键帧与插值系统
- **关键帧类型**：
  - `pose_keyframe`：定义对象的姿态/位置
  - `property_keyframe`：定义具体属性值（透明度、缩放、旋转等）
  - `event_keyframe`：标记重要时间点（音频峰值、转场点等）
- **插值方法**：
  - `linear_interpolation`：线性变化，机械感强
  - `bezier_interpolation`：贝塞尔曲线控制，平滑自然
  - `spring_interpolation`：物理弹簧模拟，弹性效果
  - `step_interpolation`：阶梯式变化，离散效果

#### 缓动曲线专业分类
- **标准缓动函数**（参考CSS easing functions但不绑定）：
  - `ease_in_quad`：加速入场，启动感强
  - `ease_out_quad`：减速退场，柔和结束
  - `ease_in_out_quad`：平滑加速减速
  - `ease_in_cubic`：更强加速曲线
  - `ease_out_cubic`：更强减速曲线
- **物理模拟缓动**：
  - `spring_physics`：弹簧物理模拟（可定义质量、刚度、阻尼）
  - `bounce_physics`：弹跳物理模拟
  - `elastic_physics`：弹性形变模拟
- **专业动画曲线**：
  - `anticipation_curve`：预备动作曲线（先反向运动再正向）
  - `follow_through_curve`：延续动作曲线（主体停止后附属元素继续运动）
  - `overshoot_curve`：过冲曲线（超过目标值后回弹）

#### 分层动画系统
- **层级关系**：
  - `parent_child_animation`：父子级联动画（父对象运动带动子对象）
  - `sibling_coordination`：同级对象协调动画（同步或交替）
  - `depth_layered_animation`：深度分层动画（前景、中景、背景不同节奏）
- **时序控制**：
  - `stagger_delay`：错开延迟（元素依次出现）
  - `phase_offset`：相位偏移（相同动画但不同时间点开始）
  - `duration_multiplier`：时长倍增器（相同动画不同速度）

#### 专业视觉效果
- **粒子系统描述语言**：
  - `emission_rate`：粒子发射率（粒子/秒）
  - `lifetime_range`：生命周期范围（最小-最大存活时间）
  - `velocity_field`：速度场（方向、大小、随机性）
  - `size_over_lifetime`：生命周期尺寸变化曲线
  - `color_over_lifetime`：生命周期颜色渐变
- **变形与形变动画**：
  - `morph_transition`：形状渐变（A形状平滑变为B形状）
  - `liquify_distortion`：液化扭曲效果
  - `wave_deformation`：波形变形
  - `mesh_warp`：网格变形（控制点驱动）
- **光学与渲染效果**：
  - `chromatic_aberration`：色差效果（RGB通道分离）
  - `lens_flare`：镜头光晕（强度、色相、形状）
  - `bloom_threshold`：泛光阈值（亮度阈值以上的光溢出）
  - `vignette_intensity`：暗角强度（边缘变暗程度）

#### 专业动画原则（12 Principles of Animation技术无关表述）
1. **挤压与拉伸**：`squash_stretch` - 表现物体质量和柔韧性
2. **预备动作**：`anticipation` - 主要动作前的反向提示
3. **演出呈现**：`staging` - 清晰传达动作意图和情绪
4. **逐帧绘制与关键帧**：`straight_ahead_pose_to_pose` - 连续绘制与关键姿势方法
5. **跟随动作与重叠动作**：`follow_through_overlapping_action` - 附属元素延迟与重叠运动
6. **慢入慢出**：`slow_in_slow_out` - 动作开始结束的加速减速
7. **弧形运动**：`arcs` - 自然生物的曲线运动轨迹
8. **次要动作**：`secondary_action` - 支持主要动作的细节动作
9. **时间控制**：`timing` - 动作速度传达物理属性和情绪
10. **夸张**：`exaggeration` - 强化动作的戏剧性和清晰度
11. **扎实绘画**：`solid_drawing` - 三维空间中的体积感和重量感
12. **吸引力**：`appeal` - 设计的视觉吸引力和个性

#### 专业动效设计流程
- **设计阶段**：
  - `motion_storyboard`：动效故事板（关键姿势序列）
  - `timing_sheet`：时间表（每个动作的精确时长）
  - `easing_specification`：缓动规范（每个过渡的曲线类型）
- **技术沟通**：
  - `motion_spec_document`：动效规范文档（描述WHAT，不指定HOW）
  - `reference_video`：参考视频（展示期望效果）
  - `interaction_prototype`：交互原型（展示用户交互反馈）

## Enhanced Visual Design Principles

### Color Theory for Video

- **Emotional Color Mapping**: Specific color → emotion relationships (teal=curiosity, orange=energy, purple=mystery)
- **Color Progression**: How palette evolves through video narrative
- **Contrast Strategies**: Complementary, analogous, triadic, split-complementary
- **Accessibility**: Minimum 4.5:1 contrast ratio for text
- **Color Temperature**: Warm vs cool dominance for emotional tone

#### 专业色彩系统（技术无关概念）

**色彩心理学深度**：
- **文化色彩语义**：不同文化传统中的色彩含义（东方：红色=吉祥，西方：红色=危险/激情）
- **色彩情绪轮**：色彩与情感状态的系统映射（兴奋色系、平静色系、神秘色系、专业色系）
- **色彩感知权重**：不同色彩的视觉重量感（深色=沉重稳定，浅色=轻盈飘浮）

**色彩叙事技巧**：
- **色彩弧线设计**：随着叙事发展的色彩演变路径（开端→发展→高潮→结尾的色彩变化）
- **色彩主题标识**：特定概念或角色关联的专属色彩（主角色、反派色、关键概念色）
- **色彩对比叙事**：通过色彩对比强化戏剧冲突（冷暖对抗、明暗对决、饱和度高反差）

**专业色彩系统概念**：
- **色彩空间维度**（概念层面）：色相（情感基调）、饱和度（情感强度）、明度（视觉权重）
- **色彩和谐理论**：单色和谐、类似色和谐、互补色和谐、分裂互补色和谐、三角色和谐
- **色彩梯度设计**：线性梯度（平滑过渡）、分段梯度（阶梯变化）、径向梯度（中心扩散）
- **色彩动态范围**：从最低到最高饱和度/明度的可控变化范围

**色彩实现考量**（技术无关）：
- **色彩保真度**：色彩在不同显示设备上的一致性保持
- **色彩自适应**：针对不同观看环境（明亮/暗黑模式）的色彩调整策略
- **色彩性能优化**：复杂色彩效果与渲染性能的平衡考量

### Composition Frameworks

- **Rule of Thirds**: Primary subjects at intersection points
- **Golden Ratio**: Spiral composition for natural flow
- **Symmetry vs Asymmetry**: Balanced vs dynamic compositions
- **Visual Hierarchy**: Size, color, position to guide attention
- **Negative Space**: Strategic emptiness for emphasis
- **Leading Lines**: Architectural/graphic elements that guide eye movement

#### 专业构图系统（技术无关概念）

**视觉重心与平衡**：
- **视觉重心计算**：基于位置、大小、色彩对比度的视觉权重分布
- **动态平衡构图**：不对称但心理平衡的构图安排
- **视觉张力设计**：通过不平衡元素创造动态感和期待感

**视线引导系统**：
- **视觉路径规划**：观众视线在画面中的预设移动路径
- **焦点转移策略**：引导观众注意力在多个重点间的有序转移
- **视觉停留点**：刻意设计的视线暂停位置，用于强调关键信息

**深度与空间构图**：
- **景深分层**：前景、中景、背景的明确区分与互动
- **透视强化技巧**：线性透视、大气透视、尺寸透视的视觉应用
- **空间感营造**：通过重叠、大小变化、细节密度创造三维感

**动态构图原则**：
- **运动轴线**：物体运动方向的视觉引导线
- **动势捕捉**：通过静态构图暗示动态趋势
- **节奏构图**：重复元素创造视觉节奏感

**专业构图框架应用**：
- **Z型构图**：视线自然扫描路径，适用于信息展示
- **三角构图**：稳定感强，适用于权威内容
- **放射构图**：聚焦中心，适用于重点强调
- **框架构图**：利用前景元素框定主体，增加深度感
- **散点构图**：自由分布，适用于轻松活泼内容

### Visual Consistency System

#### Design Tokens (Reusable Visual Elements)

- **Color Palette**: Primary (1-2), Secondary (3-4), Accent (1-2) colors with HEX codes
- **Typography Scale**: Headline (2.5×), Subhead (1.75×), Body (1×), Caption (0.875×)
- **Spacing Rhythm**: 8px grid system for consistent margins/padding
- **Animation Presets**: Reusable timing/easing combinations
- **Visual Motifs**: Recurring graphic elements (circles, lines, particles)

#### Consistency Checklist

- [ ] Color palette applied consistently across all scenes
- [ ] Typography hierarchy maintained throughout
- [ ] Spacing rhythm follows 8px grid
- [ ] Animation easing curves match emotional tone
- [ ] Visual motifs reappear with variation
- [ ] Transition styles create cohesive flow
- [ ] Audio-visual sync within 0.1 seconds

#### Scene-to-Scene Cohesion

- **Visual Bridges**: Elements that carry over between scenes
- **Color Continuity**: Gradual palette shifts vs abrupt changes
- **Motion Language**: Consistent easing and timing patterns
- **Narrative Flow**: Visuals support story progression
- **Pacing Rhythm**: Scene duration matches content importance
#### 专业设计系统（技术无关概念）

**设计系统基础理论**：
- **系统设计思维**：将视觉元素视为可复用、可组合的设计原子
- **设计token层级**：基础token（颜色、字体、间距）→ 组件token（按钮、卡片）→ 模式token（布局、流程）
- **设计比例系统**：基于数学比例（黄金分割、倍数系统）的和谐尺寸关系

**设计token深层语义**：
- **语义化token命名**：基于功能而非外观命名（`color_primary_action`而非`color_blue_500`）
- **响应式token适配**：针对不同屏幕尺寸/设备类型的token值映射
- **多主题token系统**：支持亮色/暗色主题的模式化token切换

**一致性系统的专业考量**：
- **跨平台一致性策略**：不同实现平台（Web、移动端、视频编辑器）的设计系统适配
- **版本演进管理**：设计系统随着时间演进的向后兼容与迁移策略
- **无障碍一致性**：确保所有视觉状态（正常、焦点、悬停、禁用）都保持可访问性

**设计系统验证框架**：
- **一致性审计清单**：自动化检查设计token使用的一致性与完整性
- **视觉回归检测**：检测设计变更对整体视觉一致性的影响
- **设计系统健康度指标**：token覆盖率、使用一致性、违反规则数量

**设计系统实施指南**（技术无关）：
- **分阶段实施策略**：从基础token开始，逐步扩展到组件与模式
- **设计-实施协作流程**：设计师与开发者之间的设计系统沟通与验收
- **设计系统文档化**：设计决策、使用示例、实施指南的完整记录

### Visual Storytelling Principles

#### Visual Metaphors

- **Concept Representation**: Abstract ideas → concrete visual symbols
- **Metaphor Consistency**: Same concept uses same visual metaphor throughout
- **Metaphor Evolution**: Metaphors transform as narrative progresses
- **Cultural Considerations**: Universally understood symbols vs culture-specific

#### Emotional Visual Arc

- **Opening Visual Hook**: First 3 seconds establish visual style and intrigue
- **Progressive Revelation**: Information revealed visually in logical sequence
- **Climax Visual Intensity**: Peak emotional moment = peak visual complexity
- **Resolution Visual Calm**: Visual simplicity returns as story concludes

#### Visual Pacing Techniques

- **Fast Pacing**: Quick cuts, dynamic camera moves, high saturation
- **Slow Pacing**: Long takes, smooth camera, desaturated colors
- **Pacing Transitions**: Gradual shifts between pacing styles
- **Pacing with Audio**: Visual rhythm synchronized with musical beats

#### Visual Information Hierarchy

1. **Primary Focus**: Main subject (largest, highest contrast)
2. **Secondary Context**: Supporting elements (medium size/contrast)
3. **Background Atmosphere**: Environmental elements (small, low contrast)
4. **Transient Effects**: Temporary animations (particles, glows)

#### Visual Memory Anchors

- **Recurring Motifs**: Visual elements that repeat with variations
- **Color Signifiers**: Specific colors associated with specific concepts
- **Character Visual Language**: Consistent visual treatment for recurring "characters"
- **Transition Signatures**: Unique transition styles for narrative segments

#### 专业视觉叙事系统（技术无关概念）

**视觉叙事框架**：
- **视觉三幕结构**：建立（视觉风格确立）→冲突（视觉复杂度提升）→解决（视觉回归简洁）
- **视觉悬念设计**：通过构图、色彩、运动创造期待感和好奇心
- **视觉反转技巧**：通过视觉元素的意外变化创造叙事转折点

**视觉情绪传递**：
- **视觉情绪弧线**：与叙事情绪同步的视觉强度变化曲线
- **情绪视觉编码**：不同情绪状态的专属视觉语言（紧张=锐利线条/高对比，平静=柔和曲线/低对比）
- **情绪过渡平滑**：情绪变化时的视觉过渡自然性保障

**视觉信息层级深化**：
- **四级信息架构**：
  1. **核心信息层**（必需）：关键信息传达，最高视觉优先级
  2. **支持信息层**（重要）：背景与上下文，中等视觉优先级
  3. **氛围营造层**（增强）：情绪与环境营造，低视觉优先级
  4. **装饰元素层**（可选）：美学装饰，最低视觉优先级
- **视觉注意力管理**：引导观众注意力在信息层级间的有序移动

**视觉节奏控制系统**：
- **视觉节拍设计**：关键视觉变化点的节奏安排（每3-5秒一个视觉变化点）
- **节奏变化曲线**：视觉节奏的加速/减速/停顿安排
- **多感官节奏同步**：视觉节奏与音频节奏、叙事节奏的协调统一

**视觉符号系统设计**：
- **符号语义层**：视觉符号的基础含义（文化通用+特定定义）
- **符号关系层**：符号之间的视觉关联与对比关系
- **符号演变层**：符号随着叙事发展的形态变化与含义深化

**视觉叙事验证清单**：
- [ ] 每个场景是否有明确的视觉叙事目标？
- [ ] 视觉元素是否支持而不是干扰核心信息？
- [ ] 视觉节奏是否与内容重要性匹配？
- [ ] 视觉风格是否在整个视频中保持一致？
- [ ] 视觉元素是否有清晰的开始、发展和结束？
- [ ] 视觉叙事是否考虑不同观众的文化背景？
- [ ] 视觉复杂度是否与目标平台性能匹配？

### 专业动画设计系统（技术无关框架）

#### 动效设计方法论
- **基于叙事的设计**：动画节奏与故事情节同步（紧张情节=快速动画，抒情段落=缓慢动画）
- **基于情感的缓动**：情绪状态决定缓动曲线（兴奋=弹性曲线，平静=平滑曲线，紧张=线性急促）
- **基于物理的模拟**：真实世界物理特性参考（重量感、摩擦力、空气阻力）

#### 专业动画分层架构
1. **基础层**：主体对象动画（位置、旋转、缩放）
2. **增强层**：视觉效果叠加（阴影、发光、粒子）
3. **交互层**：用户输入响应（点击反馈、悬停效果、拖拽动画）
4. **环境层**：背景与环境动画（氛围粒子、动态背景、光影变化）

#### 动效状态机设计
- **状态定义**：`idle`（空闲）、`active`（激活）、`hover`（悬停）、`focus`（聚焦）、`loading`（加载）、`success`（成功）、`error`（错误）
- **状态转换规则**：允许的状态转换路径与禁止的跳跃
- **转换动画规范**：每个状态转换的时长、缓动、视觉反馈

#### 专业动画性能考量（概念层面）
- **复杂度分级**：`simple`（<5个动画元素）、`moderate`（5-15元素）、`complex`（15-30元素）、`extreme`（>30元素）
- **层级优化策略**：静态元素与动态元素分离，避免全场景重绘
- **时序错开策略**：大量元素动画时错开启动时间，避免性能峰值

#### 无障碍动画设计
- **减少运动症触发**：避免快速闪烁（>3Hz）、大幅视差滚动、旋转动画
- **可暂停动画**：为用户提供暂停/减少动画的选项
- **高对比度动画**：确保动画元素在运动状态下仍保持可识别性

#### 跨平台动画适配策略
- **核心动效规范**：定义必须实现的动画效果（语义描述）
- **平台特性映射**：不同实现平台的能力差异与替代方案
- **降级策略**：高端效果不可用时，提供等效的简化版本

#### 动画设计验证清单
- [ ] 动画是否支持叙事目标？
- [ ] 缓动曲线是否符合情感基调？
- [ ] 动画时长是否与内容重要性匹配？
- [ ] 是否存在不必要的复杂动画？
- [ ] 动画是否考虑性能影响？
- [ ] 动画是否无障碍友好？
- [ ] 是否有清晰的开始和结束状态？
- [ ] 动画是否在不同平台上有可行的实现方案？

## Visual Quality Grading System

### Level 1: Basic Professional

- Solid color backgrounds
- Simple entrance/exit animations
- Consistent typography
- Clear audio-visual sync

### Level 2: Enhanced Visual

- Gradient/textured backgrounds
- Particle effects for emphasis
- Layered composition (foreground/midground/background)
- Color grading for mood
- Basic 3D transformations

### Level 3: Cinematic Experience

- Advanced particle systems
- Complex 3D camera movements
- Custom shader effects
- Multi-layer parallax scrolling
- Dynamic lighting simulations
- Real-time visual feedback to audio

### Level 4: Experimental Art

- Generative/procedural visuals
- AI-assisted visual generation
- Interactive viewer elements
- Non-linear visual narratives
- Mixed reality elements

## Design Language Philosophy

**Universal Animation Vocabulary:** All visual design concepts in this framework use **pure, technology-agnostic design language** that focuses on **WHAT** (creative vision, emotional impact, visual storytelling) rather than **HOW** (specific technical implementation).

**Core Principles:**
- **Technology Independence:** Visual descriptions use universal animation terms applicable to any motion graphics platform
- **Creative Direction First:** Specify visual intent, emotion, and timing—not code or software commands
- **Implementation Flexibility:** Directors describe effects using standard animation vocabulary; implementers choose appropriate technology
- **Quality Consistency:** Maintain visual coherence across different production pipelines

**Professional Animation Terminology:** This framework uses industry-standard motion design vocabulary including easing curves, timing descriptors, composition principles, and visual hierarchy—all expressed in technology-neutral language that can be translated to any animation system.

## Related Resources

- **Implementation examples**: See supporting guides for different video production approaches
- **Project management**: Use planning skills for production timeline coordination
- **Full vocabulary**: See Appendix in [complete-template-reference.md](complete-template-reference.md)
- **Visual design templates**: Refer to `complete-examples.md` for production-ready designs
