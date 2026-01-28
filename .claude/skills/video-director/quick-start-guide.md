## Quick Start

### ⚠️ 前置条件检查（必须）

在开始之前，确认以下条件已满足：

```yaml
pre_flight_check:
  content_validation:
    - [ ] 用户提供了具体的视频脚本或详细内容大纲
    - [ ] 内容包含足够的信息来推导核心主题
    - [ ] 输入不仅仅是主题词、标题或风格描述
  
  rejection_criteria:
    - "仅提供主题（如'做个AI视频'）→ 停止，要求详细内容"
    - "仅提供标题（如'量子计算科普'）→ 停止，要求文案或脚本"
    - "仅描述风格（如'要酷炫科技感'）→ 停止，要求具体内容"
  
  required_content_format:
    acceptable:
      - "完整的逐字稿脚本"
      - "场景分解大纲（场景1：... 场景2：...）"
      - "核心内容要点（包含关键信息、知识点、传达要点）"
    not_acceptable:
      - "单个主题词"
      - "只有标题"
      - "只有风格/形式要求"
```

**如果未通过前置条件检查，使用以下话术：**

> **我需要您提供具体的视频内容才能继续。**
> 
> 您目前只提供了主题/标题，但我需要详细的内容来制作专业的视频规划。
> 
> 请提供以下任一项：
> 1. **完整的视频脚本/旁白文案**（逐字稿）
> 2. **详细的场景大纲**（每个场景要讲什么内容）
> 3. **核心内容要点**（关键信息、要点列表、预期传达的知识点）
>
> 示例：
> - ✅ "第一场景介绍XX概念，说明... 第二场景展示..."
> - ✅ "视频要讲解光合作用，包含：1. 定义 2. 过程 3. 意义"

---

### Director's Approach

As the video director, your role is to coordinate all creative and technical aspects of production. Use this framework to:

1. **Establish Creative Vision**: Define the core message, emotional journey, and artistic style
2. **Guide Each Department**: Provide clear direction for scriptwriting, audio design, visual art, and post-production
3. **Maintain Quality Standards**: Implement review checkpoints and approval processes
4. **Ensure Cohesive Output**: Unify all elements into a professional final product

### 1. Define Your Director's Vision

Start by completing the `director_vision` section in the template:

```yaml
director_vision:
  creative_vision: |
    What is the core message and emotional journey?
    What unique artistic approach will distinguish this video?
    How will visuals and audio work together to tell the story?
  
  target_audience:
    demographics: "Be specific about who you're creating for"
    viewing_context: "Consider platform, device, and viewing environment"
    emotional_needs: "What should the audience feel and remember?"
  
  success_metrics:
    engagement_goals: "What constitutes success for this video?"
    artistic_aspirations: "Creative achievements to aim for"
```

### 2. Develop the Script with Narrative Intent

Use the `scriptwriting` section to create a compelling narrative:

```yaml
scriptwriting:
  narrative_structure:
    story_arc: "Traditional three-act or innovative structure"
    pacing_strategy: "How information and emotions unfold"
    key_moments: "Scenes that must have maximum impact"
  
  scenes:
    - scene_number: 1
      scene_objective: "What this scene must accomplish"
      narrative_function: "How it advances the overall story"
      key_dialogue: |
        Write narration with calculated word count
        - Target: duration_seconds × 3.8 characters/second
        - Adjust for emotional pacing and emphasis
      emotional_tone: "Specific emotional quality to achieve"
```

### 3. Direct Audio Design with Professional Standards

Guide the audio team using the `audio_design` section:

```yaml
audio_design:
  voice_direction:
    casting_specifications: "Define the perfect voice for your content"
    performance_guidance: "Provide specific direction for delivery"
  
  sound_design:
    ambient_soundscape: "Create the audio environment"
    musical_score: "Music that supports emotional journey"
  
  technical_specs:
    recording_standards: "Professional 48kHz/24-bit WAV format"
    mixing_standards: "-16 LUFS integrated loudness"
```

### 4. Guide Visual Art with Cinematic Precision

Direct the visual team using the `visual_art` section:

```yaml
visual_art:
  cinematic_style:
    visual_aesthetic: "Overall look and feel"
    color_palette: "Colors that support narrative emotions"
  
  composition:
    aspect_ratio: "Choose based on distribution platform"
    framing_principles: "Rule of thirds, leading lines, visual hierarchy"
  
  motion_design:
    animation_style: "How elements move and interact"
    easing_strategies: "Motion acceleration/deceleration"
```

### 5. Oversee Post-Production for Cohesive Final Product

Manage the editing process using the `post_production` section:

```yaml
post_production:
  editing_approach:
    rhythm_and_pacing: "Editorial rhythm matching narrative"
    scene_transitions: "How scenes connect visually and audibly"
  
  color_grading:
    grade_style: "Color treatment enhancing mood and consistency"
  
  audio_post:
    final_mix: "Balance all audio elements professionally"
```

### 6. Ensure Professional Final Deliverables

Specify delivery requirements in the `final_deliverables` section:

```yaml
final_deliverables:
  master_files:
    video_master: "1920x1080, 30fps, H.264, 20 Mbps"
    alternative_versions: "Platform-optimized variations"
  
  delivery_specs:
    quality_control_report: "Complete final QC checklist"
```

### 7. Implement Director's Review & Approval Process

Use the `director_approval` section to manage quality gates:

```yaml
director_approval:
  review_checkpoints:
    script_approval: "Required before audio production"
    audio_approval: "Required before visual production"
    visual_approval: "Required before post-production"
    final_approval: "Required before distribution"
  
  change_management:
    revision_process: "Structured feedback and iteration"
    final_lock: "Point of no further changes"
```

### Key Director Responsibilities

1. **Creative Unity**: Ensure all elements support the core vision
2. **Quality Consistency**: Maintain professional standards across all departments
3. **Timely Decisions**: Make clear creative choices to keep production moving
4. **Team Guidance**: Provide specific, actionable direction to each department
5. **Final Approval**: Take responsibility for the completed work

Remember: As director, you are the creative leader and final decision-maker. Use this framework to communicate your vision clearly and ensure professional execution at every stage.
