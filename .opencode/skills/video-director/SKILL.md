---
name: video-director
description: Use when user provides video script/storyboard/theme and needs professional video production plan with structured scenes, audio narration, visual design, quality checkpoints, timeline coordination, and creative direction
---

# Video Director

## Overview

Production framework that transforms video scripts into structured plans with clear instructions for all creative departments, quality checkpoints, and implementation guidance.

**Key Principle:** This skill uses **pure design language** - no technology-specific implementation details. All visual and motion descriptions use universal animation vocabulary that can be implemented in any technology (Remotion, After Effects, CSS Animation, Framer Motion, etc.).

## 🚀 30秒速查卡

1. **分析输入**：视频类型 + 主题 + 情感基调 + 目标时长 + 目标受众
2. **决策树推荐**：叙事结构 → 色彩策略 → 音乐风格 → 节奏策略 → 语言深度
3. **填写YAML**：创意愿景 → 剧本设计 → 音频设计 → 视觉艺术 → 后期制作
4. **4阶段审核**：脚本审核 → 音频审核 → 视觉审核 → 最终审核

## When to Use

**Use when:**
- User provides video script or theme description
- Need structured production plan with scenes, audio, visual design
- Require quality checkpoints and department coordination
- Converting text to professional video production framework
- Want technology-agnostic creative direction
- Need intelligent style handling (automatic recognition, vague style clarification, confidence-based recommendations)

**Do NOT use for:**
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

| Task | Reference File |
|------|----------------|
| **Director's decision making** | [director-decision-framework.md](director-decision-framework.md) |
| **Complete YAML template** | [complete-template-reference.md](complete-template-reference.md) |
| **Style system & mapping** | [style-knowledge-base.md](style-knowledge-base.md) |
| **Style examples (Chinese/Cyberpunk/Japanese)** | [style-examples.md](style-examples.md) |
| **Step-by-step quick start** | [quick-start-guide.md](quick-start-guide.md) |
| **Implementation & integration** | [implementation-guide.md](implementation-guide.md) |
| **Troubleshooting & visual upgrades** | [troubleshooting-guide.md](troubleshooting-guide.md) |
| **Complete examples** | [complete-examples.md](complete-examples.md) |

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

## Enhanced Visual Design Principles

### Color Theory for Video
- **Emotional Color Mapping**: Specific color → emotion relationships (teal=curiosity, orange=energy, purple=mystery)
- **Color Progression**: How palette evolves through video narrative
- **Contrast Strategies**: Complementary, analogous, triadic, split-complementary
- **Accessibility**: Minimum 4.5:1 contrast ratio for text
- **Color Temperature**: Warm vs cool dominance for emotional tone

### Composition Frameworks
- **Rule of Thirds**: Primary subjects at intersection points
- **Golden Ratio**: Spiral composition for natural flow
- **Symmetry vs Asymmetry**: Balanced vs dynamic compositions
- **Visual Hierarchy**: Size, color, position to guide attention
- **Negative Space**: Strategic emptiness for emphasis
- **Leading Lines**: Architectural/graphic elements that guide eye movement

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

## Technical Realization Note

**Design Language Implementation Philosophy:** All visual design concepts in this framework use **pure, technology-agnostic design language**. These concepts can be realized through various technologies including but not limited to:

- **Remotion** (React-based programmatic video)
- **Adobe After Effects** (Traditional motion graphics)
- **CSS Animations** (Web-based implementations)
- **Framer Motion** (React animation library)
- **Three.js/WebGL** (3D and advanced visual effects)
- **Custom canvas/svg implementations**

The design language focuses on **WHAT** (creative vision, emotional impact, visual storytelling) rather than **HOW** (specific technical implementation). This ensures the creative direction remains consistent regardless of the chosen technology stack.

## Related Resources

- **Implementation examples**: See supporting guides for different video production approaches
- **Project management**: Use planning skills for production timeline coordination
- **Full vocabulary**: See Appendix in [complete-template-reference.md](complete-template-reference.md)
- **Visual design templates**: Refer to `complete-examples.md` for production-ready designs
