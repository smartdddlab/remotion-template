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
1. **Analyze Requirements** → Video type, theme, emotional tone, target audience
2. **Plan Creative Elements** → Script structure, visual style, audio approach, pacing
3. **Coordinate Departments** → Ensure consistency across script, audio, visual design
4. **Generate Production Plan** → Structured guidance for all implementation teams
5. **Set Quality Checkpoints** → Review gates at each production stage

See [quick-start-guide.md](quick-start-guide.md) for workflow and [director-decision-framework.md](director-decision-framework.md) for decision framework.

## Quick Reference

| Task | Reference File |
|------|----------------|
| **Director's decision making** | [director-decision-framework.md](director-decision-framework.md) |
| **Complete YAML template** | [complete-template-reference.md](complete-template-reference.md) |
| **Step-by-step quick start** | [quick-start-guide.md](quick-start-guide.md) |
| **Implementation & integration** | [implementation-guide.md](implementation-guide.md) |
| **Troubleshooting & visual upgrades** | [troubleshooting-guide.md](troubleshooting-guide.md) |
| **Complete examples** | [complete-examples.md](complete-examples.md) |

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
