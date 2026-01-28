# Complete Examples - Style Integration
# 完整示例 - 风格集成

---

## Example 4: Chinese Style Educational Video - Traditional Chinese Medicine (中国风科普视频 - 中医)

**视频类型**：educational（科普中医知识）
**情感基调**：inspiring（启发）
**目标时长**：45 秒（medium）
**目标受众**：general（大众，对中国文化感兴趣）
**风格定义**：中国风 + 现代 + 极简

```yaml
video_director_framework:
  director_vision:
    creative_vision: |
      核心信息：通过中医"阴阳五行"理论，展示东方智慧如何理解人体与自然的关系。
      情感旅程：好奇（提出问题）→ 理解（理论讲解）→ 感悟（实践应用）→ 启发（文化传承）。
      风格定位：现代中国风，用传统水墨美学结合现代极简设计，传递传统文化的现代诠释。
      关键隐喻：阴阳用黑白太极，五行用五色圆环，经络用流动的墨线。

    target_audience:
      demographics: "general（大众受众，18-45岁，对中国文化感兴趣）"
      viewing_context: "mobile/desktop（B站、抖音、教育平台）"
      prior_knowledge: "minimal（无中医先验知识）"
      emotional_needs: "curiosity, understanding, cultural appreciation（好奇、理解、文化欣赏）"

    success_metrics:
      engagement_goals: "watch_time > 75%, completion_rate > 80%, shares > 5%"
      learning_outcomes: "理解阴阳五行基本概念、了解中医理论体系、认识传统文化智慧"
      brand_objectives: "N/A"
      artistic_aspirations: "将传统中医文化以现代视觉语言呈现"

  # 新增：风格定义
  style_definition:
    cultural_style: "chinese"
    era_style: "modern"
    genre_style: "minimalist"
    style_rationale: "用中国传统美学（水墨、留白、阴阳五行）结合现代极简设计，传递传统文化的现代诠释。水墨笔触和传统纹样营造文化氛围，现代极简确保信息清晰易读。"

  scriptwriting:
    narrative_structure:
      story_arc: "three_act（问题引入→理论讲解→实践应用→文化升华）"
      pacing_strategy: "moderate with deliberate pacing（适中节奏，有意的停顿以体现文化深度）"
      key_moments: "1. 提出问题（好奇） 2. 阴阳理论（理解） 3. 五行应用（感悟） 4. 文化传承（启发）"
      call_to_action: "N/A"

    scenes:
      - scene_number: 1
        timecode: "0:00 - 0:08 (8秒，约30字）"
        scene_objective: "建立好奇心，提出问题"
        narrative_function: "setup"
        key_dialogue: |
          人体为什么会生病？中医认为，这是人体内部**阴阳失衡**、五行**不和**的结果。

        visual_direction:
          scene_visual_identity:
            perspective_scale: "personal"
            scale_journey: "个人尺度，聚焦人体"
          composition_strategy:
            primary_rule: "symmetry"
            focal_point: "center"
            leading_elements: "太极图居中，阴阳符号从中心扩散"
            negative_space: "充足留白，体现东方美学"
          lighting_design:
            lighting_mood: "soft_even"
            key_light:
              direction: "top"
              quality: "soft"
              color_temperature: "warm"
          color_strategy:
            dominant_tone: "black_white"
            contrast_approach: "complementary"
            saturation_arc: "黑白对比，阴阳平衡"
          depth_layers:
            foreground:
              content: "太极图符号"
              blur_level: "none"
              opacity: 1.0
            midground:
              content: "人体轮廓"
              emphasis: "secondary"
            background:
              content: "宣纸纹理背景"
              blur_level: "slight"
              opacity: 0.8
          motion_design:
            entrance:
              style: "ink dissolve"
              quality: "gentle ease"
              duration_feeling: "smooth"
            continuous_motion:
              type: "subtle_float"
            emphasis_moments:
              - trigger: "阴阳失衡"
                effect: "gentle_scale_pulse"
              - trigger: "不和"
                effect: "color_shift"
            exit:
              style: "fade"
              quality: "smooth"
          transition_design:
            type: "ink dissolve"
            timing: "leisurely"
            visual_bridge: "水墨墨痕延续"
            narrative_purpose: "从问题过渡到理论讲解"

        emotional_tone: "inspiring"
        transition_logic: "ink dissolve"

      - scene_number: 2
        timecode: "0:08 - 0:20 (12秒，约46字）"
        scene_objective: "揭示核心理论"
        narrative_function: "development"
        key_dialogue: |
          阴阳是中医的基础理论。阳代表**热、动、外**，阴代表**冷、静、内**。健康状态下，阴阳**相互制约**、保持**动态平衡**。

        visual_direction:
          scene_visual_identity:
            perspective_scale: "environmental"
            scale_journey: "环境尺度，展示阴阳平衡"
          composition_strategy:
            primary_rule: "balance"
            focal_point: "center"
            leading_elements: "黑白两色从两侧向中心汇聚"
            negative_space: "对称留白"
          lighting_design:
            lighting_mood: "soft_even"
            key_light:
              direction: "top"
              quality: "diffused"
              color_temperature: "neutral"
          color_strategy:
            dominant_tone: "black_white_gold"
            contrast_approach: "complementary"
            saturation_arc: "黑白金，体现阴阳平衡"
          depth_layers:
            foreground:
              content: "阴阳符号"
              blur_level: "none"
              opacity: 1.0
            midground:
              content: "平衡天平"
              emphasis: "primary"
            background:
              content: "水墨晕染"
              blur_level: "moderate"
              opacity: 0.6
          motion_design:
            entrance:
              style: "slide_from_left_and_right"
              quality: "smooth"
              duration_feeling: "smooth"
            continuous_motion:
              type: "gentle_breathe"
            emphasis_moments:
              - trigger: "相互制约"
                effect: "scale_pulse"
              - trigger: "动态平衡"
                effect: "gentle_rotation"
            exit:
              style: "dissolve"
              quality: "smooth"
          transition_design:
            type: "ink dissolve"
            timing: "leisurely"
            visual_bridge: "水墨墨痕延续"
            narrative_purpose: "从阴阳理论过渡到五行应用"

        emotional_tone: "inspiring"
        transition_logic: "ink dissolve"

      - scene_number: 3
        timecode: "0:20 - 0:35 (15秒，约57字）"
        scene_objective: "展示五行应用"
        narrative_function: "climax"
        key_dialogue: |
          五行（木、火、土、金、水）对应人体五脏。木生火、火生土、土生金、金生水、水生木，相互**生克制化**，形成生命循环。当五行失衡，就会影响对应脏腑的功能。

        visual_direction:
          scene_visual_identity:
            perspective_scale: "environmental"
            scale_journey: "环境尺度，展示五行循环"
          composition_strategy:
            primary_rule: "circular"
            focal_point: "center"
            leading_elements: "五行圆环从中心旋转展开"
            negative_space: "充足留白"
          lighting_design:
            lighting_mood: "soft_even"
            key_light:
              direction: "top"
              quality: "soft"
              color_temperature: "warm"
          color_strategy:
            dominant_tone: "five_colors"
            contrast_approach: "analogous"
            saturation_arc: "五行五色，木青火赤土黄金白水黑"
          depth_layers:
            foreground:
              content: "五行符号"
              blur_level: "none"
              opacity: 1.0
            midground:
              content: "循环箭头"
              emphasis: "primary"
            background:
              content: "水墨晕染"
              blur_level: "moderate"
              opacity: 0.6
          motion_design:
            entrance:
              style: "rotate_in"
              quality: "smooth"
              duration_feeling: "smooth"
            continuous_motion:
              type: "slow_rotate"
            emphasis_moments:
              - trigger: "生克制化"
                effect: "scale_pulse"
              - trigger: "生命循环"
                effect: "gentle_rotation"
            exit:
              style: "dissolve"
              quality: "smooth"
          transition_design:
            type: "ink dissolve"
            timing: "leisurely"
            visual_bridge: "水墨墨痕延续"
            narrative_purpose: "从五行应用过渡到文化传承"

        emotional_tone: "inspiring"
        transition_logic: "ink dissolve"

      - scene_number: 4
        timecode: "0:35 - 0:45 (10秒，约38字）"
        scene_objective: "总结升华"
        narrative_function: "resolution"
        key_dialogue: |
          中医的阴阳五行，不仅是医学理论，更是中国人对**生命**和**自然**的哲学思考。它告诉我们，健康是平衡，和谐是根本。

        visual_direction:
          scene_visual_identity:
            perspective_scale: "environmental"
            scale_journey: "环境尺度，总结全局"
          composition_strategy:
            primary_rule: "symmetry"
            focal_point: "center"
            leading_elements: "太极图居中，五行环绕"
            negative_space: "充足留白，圆满收尾"
          lighting_design:
            lighting_mood: "warm_even"
            key_light:
              direction: "front"
              quality: "soft"
              color_temperature: "warm"
          color_strategy:
            dominant_tone: "black_white_gold"
            contrast_approach: "analogous"
            saturation_arc: "黑白金，温暖收尾"
          depth_layers:
            foreground:
              content: "太极图"
              blur_level: "none"
              opacity: 1.0
            midground:
              content: "五行圆环"
              emphasis: "secondary"
            background:
              content: "水墨晕染"
              blur_level: "slight"
              opacity: 0.8
          motion_design:
            entrance:
              style: "fade_in"
              quality: "smooth"
              duration_feeling: "smooth"
            continuous_motion:
              type: "static"
            emphasis_moments:
              - trigger: "生命"
                effect: "gentle_glow"
              - trigger: "和谐"
                effect: "scale_pulse"
            exit:
              style: "fade_out"
              quality: "smooth"
          transition_design:
            type: "fade"
            timing: "leisurely"
            visual_bridge: "N/A"
            narrative_purpose: "视频结束"

        emotional_tone: "inspiring"
        transition_logic: "N/A"

  audio_design:
    voice_direction:
      casting_specifications: "female-soothing（温和舒缓，符合inspiring基调）"
      emotional_range: "inspiring（启发、温和）"
      technical_requirements: "speed=1.0, emotion=neutral, language_boost=Chinese"

    sound_design:
      ambient_soundscape: "subtle Chinese instrument ambience（古筝、笛子淡入淡出）"
      sound_effects: "soft chime, gentle ink drop, subtle paper rustle（轻柔风铃、墨水滴落声、宣纸摩擦声）"
      musical_score: |
        Style: traditional Chinese instruments with modern minimal arrangement（传统乐器+现代极简编曲）
        Tempo: slow to moderate (60-80 BPM)
        Instrumentation: guzheng（古筝）, dizi（笛子）, soft percussion（轻打击乐）
        Voice level: -16 LUFS
        Music level: -20 LUFS
        Emotional alignment: inspiring/understanding（启发/理解）
      audio_transitions: "crossfade between scenes, subtle chime at key moments（场景间交叉淡入淡出，关键时刻使用轻柔风铃）"

  visual_art:
    cinematic_style:
      visual_aesthetic: "cinematic with illustrative elements（电影感+插画元素）"

      # 风格映射：根据 style_definition 自动生成
      style_integration: |
        根据style_definition自动映射：
        - color_palette: 从中国风映射表获取（黑白金、青赤黄白黑）
        - visual_elements: 从中国风映射表获取（太极、五行、水墨、留白）
        - typography: 从中国风映射表获取（书法体+宋体）
        - motion_design: 从中国风映射表获取（smooth、ink dissolve）

      color_palette:
        primary_colors: ["#000000 (水墨黑)", "#FFFFFF (宣纸白)", "#FFD700 (金)"]
        secondary_colors: ["#008080 (青)", "#DC143C (赤)", "#FFD700 (黄)", "#F0F0F0 (白)", "#808080 (黑)"]
        emotional_mapping: |
          水墨黑: 沉稳、神秘、传统
          宣纸白: 纯净、清晰、简洁
          金: 华贵、典雅、尊贵
          青: 自然、生长、木
          赤: 热情、火、运动
          黄: 稳重、土、平衡
          白: 纯洁、金、坚固
          黑: 神秘、水、智慧
        progression_arc: "黑白金 (scene 1-2) → 五色 (scene 3) → 黑白金 (scene 4)"

      visual_elements:
        motifs: ["太极图", "五行符号", "阴阳符号", "水墨笔触", "留白", "传统纹样"]
        textures: ["宣纸纹理", "水墨晕染", "绢布质感"]
        composition: ["对称构图", "留白艺术", "流动线条", "圆形构图"]

      texture_and_grain: "subtle paper texture with ink wash effects（微妙宣纸纹理+水墨晕染）"
      lighting_philosophy: "soft diffuse light with warm accents（柔和漫射光+温暖强调）"
      depth_strategy: "2-3 layer depth with ink wash（2-3层深度+水墨晕染）"

    composition:
      aspect_ratio: "16:9"
      framing_principles:
        - "symmetry for balance（对称平衡）"
        - "circular composition for cycles（圆形构图）"
        - "generous negative space（充足留白）"
        - "central focal point with radiating elements（中心焦点+辐射元素）"

      camera_perspective: "mix of personal and environmental shots（个人+环境镜头混合）"
      movement_philosophy: "smooth and deliberate with ink dissolve transitions（流畅有意+水墨溶解转场）"

    motion_design:
      animation_style: "smooth with gentle flow（流畅柔和）"
      easing_strategies: "ease-in-out for most movements, gentle ease for emphasis（缓入缓出+柔和强调）"
      transition_language: "ink dissolve, fade, smooth slide（水墨溶解、淡入淡出、平滑滑动）"
      parallax_depth: "2-layer parallax for ink wash effects（2层视差用于水墨效果）"

    typography:
      font_system:
        primary_font: "方正舒体 / 汉仪行楷（标题、强调 - 书法体）"
        secondary_font: "思源宋体（正文、信息 - 宋体）"
        font_pairing_rationale: "书法体标题传达传统美学，宋体正文保证易读性"

      text_animation: "ink dissolve for emphasis, fade for information（水墨溶解强调，淡入信息）"
      information_hierarchy: "title (书法体, largest) → key terms (highlighted, gentle pulse) → explanation (宋体, medium) → details (smallest)"
      readability_standards: "contrast ratio 4.5:1 minimum, min size 24px for body text"

  post_production:
    editing_approach:
      rhythm_and_pacing: "moderate with deliberate pacing, ink dissolve transitions（适中节奏+有意停顿+水墨溶解转场）"
      scene_transitions: "ink dissolve for gentle transitions, fade for final（水墨溶解温和转场，淡入淡出收尾）"
      parallel_editing: "N/A"
      montage_sequences: "N/A"

    visual_effects:
      vfx_requirements: "ink wash effects, subtle water ripples, soft glow at key moments（水墨效果、微妙水波纹、关键时刻柔和发光）"
      compositing_standards: "blend modes: screen for glow, normal for overlay, multiply for ink wash（屏幕混合发光，正常叠加，正片叠底水墨）"
      motion_graphics: "ink dissolve animations, rotating Taiji symbol, spinning Wu Xing circle（水墨溶解动画、太极旋转、五行圆环旋转）"
      title_design: "elegant title card with calligraphy, ink dissolve fade in over rice paper background（优雅标题卡+书法+水墨溶解+宣纸背景）"

    color_grading:
      grade_style: "warm and muted, subtle ink wash texture, consistent black/white/gold tone（温暖柔和+微妙水墨纹理+一致黑白金色调）"
      shot_matching: "match scenes with warm color grading, ensure consistent Chinese aesthetic（暖色调匹配+一致中国美学）"
      creative_looks: "subtle ink wash overlay, soft vignette for intimacy（微妙水墨叠加+柔和暗角营造亲密感）"
      technical_standards: "rec.709 color space, gamma 2.4"

    audio_post:
      final_mix: "voice at -16 LUFS, music at -20 LUFS, SFX at -18 LUFS"
      sound_sweetening: "add soft reverb to voice, enhance traditional instrument sounds"
      music_editing: "fade in at scene starts, crossfade between scenes, soft ending"
      mastering: "final output at -16 LUFS, 48kHz stereo MP3"

    post_quality_gates:
      editing_check: "moderate deliberate pacing maintained, ink dissolve transitions consistent"
      technical_check: "no glitches, audio sync within 0.1s"
      creative_check: "curiosity to understanding to appreciation arc complete"
      consistency_check: "Chinese aesthetic with minimalist design consistent throughout"

  final_deliverables:
    master_files:
      video_master:
        format: "MP4 (H.264)"
        resolution: "1920x1080"
        frame_rate: "30 fps"
        bitrate: "20 Mbps"
        audio: "Stereo, 48kHz, 320 kbps"
```

---

## Example 5: Cyberpunk Style Tech Video - AI Revolution (赛博朋克科技视频 - AI革命)

**视频类型**：educational（科普AI技术）
**情感基调**：suspense → inspiring（悬疑→启发）
**目标时长**：50 秒（medium）
**目标受众**：general（大众，对AI感兴趣）
**风格定义**：赛博朋克 + 未来 + 科技

```yaml
video_director_framework:
  director_vision:
    creative_vision: |
      核心信息：展示人工智能的飞速发展，引发对未来的思考。
      情感旅程：悬疑（AI的未知）→ 震撼（AI的能力）→ 思考（AI的影响）→ 启发（AI的未来）。
      风格定位：赛博朋克未来风，用霓虹美学和故障艺术，传递科技未来的反乌托邦感和希望。
      关键隐喻：AI用全息投影，数据流用霓虹线条，神经网络用电路板。

    target_audience:
      demographics: "general（大众受众，18-40岁，对科技感兴趣）"
      viewing_context: "mobile/desktop（YouTube、B站、科技媒体）"
      prior_knowledge: "basic（有基础AI概念）"
      emotional_needs: "curiosity, awe, contemplation（好奇、震撼、思考）"

    success_metrics:
      engagement_goals: "watch_time > 70%, completion_rate > 75%, shares > 8%"
      learning_outcomes: "了解AI发展现状、思考AI对人类的影响、展望AI未来"
      brand_objectives: "N/A"
      artistic_aspirations: "将赛博朋克美学用于AI科普，营造未来感"

  # 新增：风格定义
  style_definition:
    cultural_style: "western" (或留空)
    era_style: "future"
    genre_style: "cyberpunk"
    style_rationale: "用赛博朋克的霓虹美学和故障艺术，传递科技未来的反乌托邦感和希望。霓虹灯和全息投影营造未来感，故障艺术体现AI的不确定性。"

  scriptwriting:
    narrative_structure:
      story_arc: "three_act（AI现状→AI能力→AI未来）"
      pacing_strategy: "variable with building tension（变化节奏，逐步升级紧张感）"
      key_moments: "1. AI现状（悬疑） 2. AI能力（震撼） 3. AI影响（思考） 4. AI未来（启发）"
      call_to_action: "N/A"

    scenes:
      - scene_number: 1
        timecode: "0:00 - 0:10 (10秒，约38字）"
        scene_objective: "建立悬疑，提出问题"
        narrative_function: "setup"
        key_dialogue: |
          人工智能正在改变世界，但它的**未来**，是我们期待的**乌托邦**，还是担心的**反乌托邦**？

        visual_direction:
          scene_visual_identity:
            perspective_scale: "environmental"
            scale_journey: "环境尺度，展示城市"
          composition_strategy:
            primary_rule: "dynamic"
            focal_point: "center_right"
            leading_elements: "城市天际线从左向右倾斜"
            negative_space: "暗色背景，突出霓虹"
          lighting_design:
            lighting_mood: "dramatic_contrast"
            key_light:
              direction: "top_right"
              quality: "hard"
              color_temperature: "cool"
          color_strategy:
            dominant_tone: "dark_neon"
            contrast_approach: "complementary"
            saturation_arc: "高对比霓虹，赛博朋克"
          depth_layers:
            foreground:
              content: "霓虹灯牌"
              blur_level: "none"
              opacity: 1.0
            midground:
              content: "城市建筑"
              emphasis: "primary"
            background:
              content: "夜空"
              blur_level: "moderate"
              opacity: 0.5
          motion_design:
            entrance:
              style: "glitch_in"
              quality: "snap"
              duration_feeling: "quick"
            continuous_motion:
              type: "subtle_glow_pulse"
            emphasis_moments:
              - trigger: "未来"
                effect: "glitch_effect"
              - trigger: "乌托邦"
                effect: "neon_glow"
            exit:
              style: "digital_wipe"
              quality: "snap"
          transition_design:
            type: "glitch"
            timing: "quick"
            visual_bridge: "故障像素延续"
            narrative_purpose: "从问题过渡到AI能力"

        emotional_tone: "suspense"
        transition_logic: "glitch"

      - scene_number: 2
        timecode: "0:10 - 0:20 (10秒，约38字）"
        scene_objective: "展示AI能力"
        narrative_function: "development"
        key_dialogue: |
          AI已经能**绘画**、**写作**、**编程**，甚至**预测**未来。它不再是简单的工具，而是正在成为新的**生命形式**。

        visual_direction:
          scene_visual_identity:
            perspective_scale: "environmental"
            scale_journey: "环境尺度，展示AI应用"
          composition_strategy:
            primary_rule: "dynamic"
            focal_point: "center_left"
            leading_elements: "全息投影从左向右展开"
            negative_space: "暗色背景，突出全息"
          lighting_design:
            lighting_mood: "dramatic_contrast"
            key_light:
              direction: "top_left"
              quality: "hard"
              color_temperature: "cool"
          color_strategy:
            dominant_tone: "neon_colors"
            contrast_approach: "complementary"
            saturation_arc: "霓虹色彩，全息效果"
          depth_layers:
            foreground:
              content: "全息投影"
              blur_level: "none"
              opacity: 1.0
            midground:
              content: "AI应用场景"
              emphasis: "primary"
            background:
              content: "数据流"
              blur_level: "moderate"
              opacity: 0.6
          motion_design:
            entrance:
              style: "hologram_fade_in"
              quality: "anticipate"
              duration_feeling: "quick"
            continuous_motion:
              type: "data_flow"
            emphasis_moments:
              - trigger: "绘画"
                effect: "color_shift"
              - trigger: "写作"
                effect: "text_reveal"
              - trigger: "编程"
                effect: "code_typewriter"
              - trigger: "生命形式"
                effect: "scale_pulse"
            exit:
              style: "digital_wipe"
              quality: "snap"
          transition_design:
            type: "pixel_dissolve"
            timing: "quick"
            visual_bridge: "像素延续"
            narrative_purpose: "从AI能力过渡到AI影响"

        emotional_tone: "suspense"
        transition_logic: "pixel_dissolve"

      - scene_number: 3
        timecode: "0:20 - 0:35 (15秒，约57字）"
        scene_objective: "讨论AI影响"
        narrative_function: "climax"
        key_dialogue: |
          AI正在**重塑**工作、改变**教育**、影响**伦理**。它带来的不仅是效率提升，还有对**人类价值**的重新思考。我们该如何与AI**共生**？

        visual_direction:
          scene_visual_identity:
            perspective_scale: "environmental"
            scale_journey: "环境尺度，展示AI影响"
          composition_strategy:
            primary_rule: "dynamic"
            focal_point: "center"
            leading_elements: "多个全息投影从中心扩散"
            negative_space: "暗色背景，突出对比"
          lighting_design:
            lighting_mood: "dramatic_contrast"
            key_light:
              direction: "top"
              quality: "hard"
              color_temperature: "cool"
          color_strategy:
            dominant_tone: "neon_complementary"
            contrast_approach: "complementary"
            saturation_arc: "霓虹互补色，对比强烈"
          depth_layers:
            foreground:
              content: "全息投影"
              blur_level: "none"
              opacity: 1.0
            midground:
              content: "社会场景"
              emphasis: "primary"
            background:
              content: "数据流"
              blur_level: "moderate"
              opacity: 0.6
          motion_design:
            entrance:
              style: "staggered_hologram"
              quality: "anticipate"
              duration_feeling: "quick"
            continuous_motion:
              type: "data_flow"
            emphasis_moments:
              - trigger: "重塑"
                effect: "scale_pulse"
              - trigger: "人类价值"
                effect: "glow_intensify"
              - trigger: "共生"
                effect: "merge_animation"
            exit:
              style: "digital_wipe"
              quality: "snap"
          transition_design:
            type: "glitch"
            timing: "quick"
            visual_bridge: "故障像素延续"
            narrative_purpose: "从AI影响过渡到AI未来"

        emotional_tone: "suspense"
        transition_logic: "glitch"

      - scene_number: 4
        timecode: "0:35 - 0:50 (15秒，约57字）"
        scene_objective: "总结升华"
        narrative_function: "resolution"
        key_dialogue: |
          AI的未来，由我们定义。不是被动接受，而是主动**塑造**。在科技与人文的交汇点，人类的**智慧**和**创造力**，将指引我们走向更好的未来。

        visual_direction:
          scene_visual_identity:
            perspective_scale: "environmental"
            scale_journey: "环境尺度，总结全局"
          composition_strategy:
            primary_rule: "dynamic"
            focal_point: "center"
            leading_elements: "光束从中心向外辐射"
            negative_space: "逐渐明亮，象征希望"
          lighting_design:
            lighting_mood: "dramatic_to_bright"
            key_light:
              direction: "center"
              quality: "hard_to_soft"
              color_temperature: "cool_to_warm"
          color_strategy:
            dominant_tone: "neon_to_warm"
            contrast_approach: "complementary"
            saturation_arc: "从霓虹到温暖，象征希望"
          depth_layers:
            foreground:
              content: "光束"
              blur_level: "none"
              opacity: 1.0
            midground:
              content: "未来城市"
              emphasis: "primary"
            background:
              content: "星空"
              blur_level: "slight"
              opacity: 0.8
          motion_design:
            entrance:
              style: "light_beam_in"
              quality: "anticipate"
              duration_feeling: "smooth"
            continuous_motion:
              type: "slow_rotate"
            emphasis_moments:
              - trigger: "塑造"
                effect: "scale_pulse"
              - trigger: "智慧"
                effect: "glow_intensify"
              - trigger: "创造力"
                effect: "color_shift"
            exit:
              style: "fade_out"
              quality: "smooth"
          transition_design:
            type: "fade"
            timing: "leisurely"
            visual_bridge: "N/A"
            narrative_purpose: "视频结束"

        emotional_tone: "inspiring"
        transition_logic: "fade"

  audio_design:
    voice_direction:
      casting_specifications: "male-mystery / female-dramatic（神秘/戏剧，符合suspense→inspiring基调）"
      emotional_range: "suspense → inspiring（悬疑→启发）"
      technical_requirements: "speed=1.0, emotion=neutral, language_boost=Chinese"

    sound_design:
      ambient_soundscape: "minimalist digital ambience with low-frequency drones（极简数字氛围+低频无人机音）"
      sound_effects: "digital glitch, hologram sounds, data stream beeps（数字故障、全息音、数据流滴滴声）"
      musical_score: |
        Style: electronic with glitch elements and cinematic build-up（电子乐+故障元素+电影感渐进）
        Tempo: variable: slow (60 BPM) → fast (120 BPM) → moderate (90 BPM)
        Instrumentation: synthesizer（合成器）, glitch percussion（故障打击乐）, cinematic strings（电影弦乐）
        Voice level: -16 LUFS
        Music level: -20 LUFS
        Emotional alignment: suspense/awe/contemplation/hope（悬疑/震撼/思考/希望）
      audio_transitions: "glitch transitions at key moments, crossfade for gradual changes（关键时刻故障转场，渐变时交叉淡入淡出）"

  visual_art:
    cinematic_style:
      visual_aesthetic: "tech with cinematic elements（科技感+电影感）"

      # 风格映射：根据 style_definition 自动生成
      style_integration: |
        根据style_definition自动映射：
        - color_palette: 从赛博朋克映射表获取（霓虹青、霓虹粉、深黑）
        - visual_elements: 从赛博朋克映射表获取（霓虹灯、全息投影、故障效果）
        - typography: 从赛博朋克映射表获取（科技感字体）
        - motion_design: 从赛博朋克映射表获取（dynamic、glitch、anticipate）

      color_palette:
        primary_colors: ["#00FFFF (赛博青)", "#FF00FF (霓虹粉)", "#000000 (深黑)"]
        secondary_colors: ["#1a1a2e (深紫蓝)", "#16213e (深蓝)", "#FF4500 (橙红)", "#9400D3 (紫罗兰)"]
        emotional_mapping: |
          赛博青: 科技、未来、冷峻
          霓虹粉: 反叛、活力、夜晚
          深黑: 神秘、压抑、未知
          深紫蓝: 深度、宇宙、神秘
          深蓝: 理性、科技、冷静
          橙红: 警告、危险、能量
          紫罗兰: 奥秘、未知、幻觉
        progression_arc: "dark neon (scene 1-3) → bright hope (scene 4)"

      visual_elements:
        motifs: ["霓虹灯", "全息投影", "电路板", "数据流", "故障效果", "机械义肢"]
        textures: ["霓虹光晕", "扫描线", "故障效果", "金属质感"]
        composition: ["高对比度", "倾斜角度", "多视点", "拥挤城市景观"]

      texture_and_grain: "digital noise, scanlines, light leaks, glitch artifacts（数字噪声、扫描线、光漏、故障伪影）"
      lighting_philosophy: "high contrast neon lighting with dark shadows（高对比霓虹照明+深色阴影）"
      depth_strategy: "multi-layer with holographic depth（多层全息深度）"

    composition:
      aspect_ratio: "16:9"
      framing_principles:
        - "high contrast lighting（高对比照明）"
        - "dynamic angles（动态角度）"
        - "negative space with neon elements（霓虹元素负空间）"
        - "multiple focal points（多焦点）"

      camera_perspective: "dynamic with dramatic angle changes（动态+戏剧角度变化）"
      movement_philosophy: "fast and energetic with glitch effects（快节奏高能量+故障效果）"

    motion_design:
      animation_style: "dynamic with glitch effects（动感+故障效果）"
      easing_strategies: "snap for emphasis, elastic for bouncy elements, anticipate for reveals（快速强调+弹性回弹+预判揭示）"
      transition_language: "glitch, digital wipe, pixel dissolve, hologram fade（故障、数字擦除、像素溶解、全息淡入）"
      parallax_depth: "multi-layer parallax for holographic elements（多层视差用于全息元素）"

    typography:
      font_system:
        primary_font: "Orbitron / Rajdhani（标题、强调 - 英文科技感字体）"
        secondary_font: "Roboto / 思源黑体（正文、信息 - 无衬线体）"
        font_pairing_rationale: "科技感标题传达未来感，无衬线体保证易读性"

      text_animation: "glitch in for emphasis, typewriter for code, hologram fade for information（故障强调、代码打字机、全息信息）"
      information_hierarchy: "title (科技感, largest) → key terms (glitch highlight) → explanation (无衬线, medium) → details (smallest)"
      readability_standards: "contrast ratio 4.5:1 minimum, min size 24px for body text"

  post_production:
    editing_approach:
      rhythm_and_pacing: "variable with building tension, glitch transitions（变化节奏+升级紧张感+故障转场）"
      scene_transitions: "glitch for dramatic moments, pixel dissolve for smooth flow（戏剧时刻故障，流畅像素溶解）"
      parallel_editing: "N/A"
      montage_sequences: "N/A"

    visual_effects:
      vfx_requirements: "glitch effects, hologram projections, neon glow, light leaks（故障效果、全息投影、霓虹发光、光漏）"
      compositing_standards: "blend modes: screen for glow, add for neon, multiply for dark layers（屏幕混合发光，叠加霓虹，正片叠底暗层）"
      motion_graphics: "glitch animations, rotating holograms, data flow visualization, glitch text（故障动画、旋转全息、数据流可视化、故障文字）"
      title_design: "cyberpunk title with glitch animation, neon glow, over dark city background（赛博朋克标题+故障动画+霓虹发光+暗城市背景）"

    color_grading:
      grade_style: "high contrast neon with slight desaturation, consistent cyberpunk palette（高对比霓虹+轻微去饱和+一致赛博朋克色调）"
      shot_matching: "match scenes with neon color grading, ensure consistent cyberpunk aesthetic（霓虹调色匹配+一致赛博朋克美学）"
      creative_looks: "neon glow at holograms, subtle glitch at key moments, light leaks for atmosphere（全息霓虹发光、关键时刻微妙故障、光漏营造氛围）"
      technical_standards: "rec.709 color space, gamma 2.4"

    audio_post:
      final_mix: "voice at -16 LUFS, music at -20 LUFS, SFX at -18 LUFS"
      sound_sweetening: "add digital reverb to voice, enhance glitch effects"
      music_editing: "glitch at transitions, crossfade for smooth changes, cinematic build-up for climax"
      mastering: "final output at -16 LUFS, 48kHz stereo MP3"

    post_quality_gates:
      editing_check: "variable pacing with tension build-up, glitch transitions consistent"
      technical_check: "no glitches (intentional ones ok), audio sync within 0.1s"
      creative_check: "suspense to awe to contemplation to hope arc complete"
      consistency_check: "cyberpunk aesthetic with futuristic elements consistent throughout"

  final_deliverables:
    master_files:
      video_master:
        format: "MP4 (H.264)"
        resolution: "1920x1080"
        frame_rate: "30 fps"
        bitrate: "20 Mbps"
        audio: "Stereo, 48kHz, 320 kbps"
```

---

## Example 6: Japanese Style Healing Video - Zen Meditation (和风治愈视频 - 禅意冥想)

**视频类型**：educational（禅意冥想指导）
**情感基调**：calm（平静）
**目标时长**：40 秒（short）
**目标受众**：general（大众，需要放松）
**风格定义**：和风 + 现代 + 极简

```yaml
video_director_framework:
  director_vision:
    creative_vision: |
      核心信息：通过禅意冥想，帮助观众放松身心，找回内心平静。
      情感旅程：放松（引导呼吸）→ 平静（专注当下）→ 治愈（感受内心）→ 宁静（回归自然）。
      风格定位：现代和风极简，用禅意美学和樱花元素，营造治愈放松的氛围。
      关键隐喻：呼吸用樱花飘落，冥想用涟漪扩散，内心平静用静止的水面。

    target_audience:
      demographics: "general（大众受众，20-50岁，需要放松）"
      viewing_context: "mobile/desktop（抖音、小红书、冥想APP）"
      prior_knowledge: "minimal（无冥想先验知识）"
      emotional_needs: "relaxation, calm, healing（放松、平静、治愈）"

    success_metrics:
      engagement_goals: "watch_time > 85%, completion_rate > 90%, shares > 3%"
      learning_outcomes: "学会简单冥想方法、体验身心放松、感受内心平静"
      brand_objectives: "N/A"
      artistic_aspirations: "将和风禅意美学用于冥想指导，营造治愈氛围"

  # 新增：风格定义
  style_definition:
    cultural_style: "japanese"
    era_style: "modern"
    genre_style: "minimalist"
    style_rationale: "用和风的极简禅意和樱花元素，营造治愈放松的氛围。樱花飘落营造自然感，极简设计保持清晰指导。"

  scriptwriting:
    narrative_structure:
      story_arc: "three_act（引导呼吸→专注当下→感受内心→回归自然）"
      pacing_strategy: "slow and smooth（缓慢流畅）"
      key_moments: "1. 引导呼吸（放松） 2. 专注当下（平静） 3. 感受内心（治愈） 4. 回归自然（宁静）"
      call_to_action: "N/A"

    scenes:
      - scene_number: 1
        timecode: "0:00 - 0:10 (10秒，约38字）"
        scene_objective: "引导呼吸"
        narrative_function: "setup"
        key_dialogue: |
          找一个舒适的姿势，闭上眼睛，**深呼吸**。吸气...呼气...感受身体逐渐**放松**。

        visual_direction:
          scene_visual_identity:
            perspective_scale: "environmental"
            scale_journey: "环境尺度，营造氛围"
          composition_strategy:
            primary_rule: "minimalist"
            focal_point: "center"
            leading_elements: "樱花从上往下飘落"
            negative_space: "大量留白，营造禅意"
          lighting_design:
            lighting_mood: "soft_even"
            key_light:
              direction: "top"
              quality: "soft"
              color_temperature: "neutral"
          color_strategy:
            dominant_tone: "pink_white"
            contrast_approach: "analogous"
            saturation_arc: "柔和粉白，治愈氛围"
          depth_layers:
            foreground:
              content: "樱花花瓣"
              blur_level: "none"
              opacity: 1.0
            midground:
              content: "樱花树"
              emphasis: "primary"
            background:
              content: "蓝天"
              blur_level: "moderate"
              opacity: 0.7
          motion_design:
            entrance:
              style: "fade_in"
              quality: "gentle ease"
              duration_feeling: "smooth"
            continuous_motion:
              type: "gentle_float"
            emphasis_moments:
              - trigger: "深呼吸"
                effect: "gentle_breathe"
              - trigger: "放松"
                effect: "gentle_scale_pulse"
            exit:
              style: "fade"
              quality: "smooth"
          transition_design:
            type: "fade"
            timing: "leisurely"
            visual_bridge: "樱花延续"
            narrative_purpose: "从引导呼吸过渡到专注当下"

        emotional_tone: "calm"
        transition_logic: "fade"

      - scene_number: 2
        timecode: "0:10 - 0:20 (10秒，约38字）"
        scene_objective: "专注当下"
        narrative_function: "development"
        key_dialogue: |
          把注意力集中在**呼吸**上，感受空气进入鼻腔，充满胸腔，然后慢慢呼出。**现在**，就在这里。

        visual_direction:
          scene_visual_identity:
            perspective_scale: "environmental"
            scale_journey: "环境尺度，保持氛围"
          composition_strategy:
            primary_rule: "minimalist"
            focal_point: "center"
            leading_elements: "涟漪从中心向外扩散"
            negative_space: "大量留白，保持禅意"
          lighting_design:
            lighting_mood: "soft_even"
            key_light:
              direction: "top"
              quality: "soft"
              color_temperature: "neutral"
          color_strategy:
            dominant_tone: "blue_white"
            contrast_approach: "analogous"
            saturation_arc: "柔和蓝白，平静氛围"
          depth_layers:
            foreground:
              content: "涟漪"
              blur_level: "none"
              opacity: 1.0
            midground:
              content: "水面"
              emphasis: "primary"
            background:
              content: "蓝天"
              blur_level: "moderate"
              opacity: 0.7
          motion_design:
            entrance:
              style: "fade_in"
              quality: "gentle ease"
              duration_feeling: "smooth"
            continuous_motion:
              type: "gentle_breathe"
            emphasis_moments:
              - trigger: "呼吸"
                effect: "gentle_breathe"
              - trigger: "现在"
                effect: "gentle_scale_pulse"
            exit:
              style: "fade"
              quality: "smooth"
          transition_design:
            type: "fade"
            timing: "leisurely"
            visual_bridge: "涟漪延续"
            narrative_purpose: "从专注当下过渡到感受内心"

        emotional_tone: "calm"
        transition_logic: "fade"

      - scene_number: 3
        timecode: "0:20 - 0:30 (10秒，约38字）"
        scene_objective: "感受内心"
        narrative_function: "climax"
        key_dialogue: |
          继续保持呼吸，感受内心的**平静**。不需要思考，不需要判断，只是**存在**。感受这份宁静。

        visual_direction:
          scene_visual_identity:
            perspective_scale: "environmental"
            scale_journey: "环境尺度，深化氛围"
          composition_strategy:
            primary_rule: "minimalist"
            focal_point: "center"
            leading_elements: "静止的水面，微光闪烁"
            negative_space: "大量留白，深化禅意"
          lighting_design:
            lighting_mood: "soft_even"
            key_light:
              direction: "top"
              quality: "soft"
              color_temperature: "warm"
          color_strategy:
            dominant_tone: "gold_white"
            contrast_approach: "analogous"
            saturation_arc: "柔和金白，治愈氛围"
          depth_layers:
            foreground:
              content: "微光"
              blur_level: "none"
              opacity: 1.0
            midground:
              content: "水面"
              emphasis: "primary"
            background:
              content: "暖色天空"
              blur_level: "moderate"
              opacity: 0.7
          motion_design:
            entrance:
              style: "fade_in"
              quality: "gentle ease"
              duration_feeling: "smooth"
            continuous_motion:
              type: "static"
            emphasis_moments:
              - trigger: "平静"
                effect: "gentle_glow"
              - trigger: "存在"
                effect: "gentle_scale_pulse"
            exit:
              style: "fade"
              quality: "smooth"
          transition_design:
            type: "fade"
            timing: "leisurely"
            visual_bridge: "微光延续"
            narrative_purpose: "从感受内心过渡到回归自然"

        emotional_tone: "calm"
        transition_logic: "fade"

      - scene_number: 4
        timecode: "0:30 - 0:40 (10秒，约38字）"
        scene_objective: "回归自然"
        narrative_function: "resolution"
        key_dialogue: |
          慢慢睁开眼睛，回到当下。带着这份**平静**，继续你的一天。感谢自己，享受这份宁静。

        visual_direction:
          scene_visual_identity:
            perspective_scale: "environmental"
            scale_journey: "环境尺度，总结收尾"
          composition_strategy:
            primary_rule: "minimalist"
            focal_point: "center"
            leading_elements: "樱花继续飘落，阳光洒落"
            negative_space: "大量留白，圆满收尾"
          lighting_design:
            lighting_mood: "warm_even"
            key_light:
              direction: "top"
              quality: "soft"
              color_temperature: "warm"
          color_strategy:
            dominant_tone: "pink_gold"
            contrast_approach: "analogous"
            saturation_arc: "柔和粉金，温暖收尾"
          depth_layers:
            foreground:
              content: "阳光"
              blur_level: "none"
              opacity: 1.0
            midground:
              content: "樱花"
              emphasis: "primary"
            background:
              content: "暖色天空"
              blur_level: "slight"
              opacity: 0.8
          motion_design:
            entrance:
              style: "fade_in"
              quality: "gentle ease"
              duration_feeling: "smooth"
            continuous_motion:
              type: "gentle_float"
            emphasis_moments:
              - trigger: "平静"
                effect: "gentle_glow"
              - trigger: "宁静"
                effect: "gentle_scale_pulse"
            exit:
              style: "fade_out"
              quality: "smooth"
          transition_design:
            type: "fade"
            timing: "leisurely"
            visual_bridge: "N/A"
            narrative_purpose: "视频结束"

        emotional_tone: "calm"
        transition_logic: "N/A"

  audio_design:
    voice_direction:
      casting_specifications: "female-soothing / male-calm（温和舒缓/平静，符合calm基调）"
      emotional_range: "calm（平静、温和）"
      technical_requirements: "speed=1.0, emotion=neutral, language_boost=Chinese"

    sound_design:
      ambient_soundscape: "subtle nature sounds with soft instrumental（微妙自然音+柔和乐器）"
      sound_effects: "soft cherry blossom rustle, gentle water ripples, soft breeze（樱花沙沙声、轻微涟漪、微风）"
      musical_score: |
        Style: ambient with minimalist Japanese elements（氛围音乐+极简和风元素）
        Tempo: slow (50-60 BPM)
        Instrumentation: shakuhachi（尺八）, koto（琴）, soft piano（柔和钢琴）
        Voice level: -16 LUFS
        Music level: -20 LUFS
        Emotional alignment: calm/healing（平静/治愈）
      audio_transitions: "crossfade between scenes, subtle nature sounds throughout（场景间交叉淡入淡出，全程微妙自然音）"

  visual_art:
    cinematic_style:
      visual_aesthetic: "minimalist with illustrative elements（极简+插画元素）"

      # 风格映射：根据 style_definition 自动生成
      style_integration: |
        根据style_definition自动映射：
        - color_palette: 从和风映射表获取（樱花粉、白、蓝绿、金）
        - visual_elements: 从和风映射表获取（樱花、涟漪、极简几何）
        - typography: 从和风映射表获取（明朝体+黑体）
        - motion_design: 从和风映射表获取（slow、gentle ease、fade）

      color_palette:
        primary_colors: ["#FFB7C5 (樱花粉)", "#FFFFFF (白)", "#F0F0F0 (灰白)"]
        secondary_colors: ["#5B7C99 (蓝绿)", "#FFD700 (金)", "#8B4513 (棕)", "#FF69B4 (粉红)"]
        emotional_mapping: |
          樱花粉: 温柔、浪漫、短暂之美
          白: 纯净、简洁、禅意
          灰白: 中立、平衡、平和
          蓝绿: 自然、宁静、和谐
          金: 温暖、光明、希望
          棕: 稳重、自然、朴实
          粉红: 温柔、可爱、治愈
        progression_arc: "pink white (scene 1-2) → gold white (scene 3) → pink gold (scene 4)"

      visual_elements:
        motifs: ["樱花", "涟漪", "水面", "阳光", "极简几何"]
        textures: ["和纸纹理", "渐变色彩", "细线纹理"]
        composition: ["极简构图", "负空间利用", "不对称平衡"]

      texture_and_grain: "subtle washi paper texture, soft gradients（微妙和纸纹理+柔和渐变）"
      lighting_philosophy: "soft even light with natural feel（柔和均匀光+自然感）"
      depth_strategy: "2-3 layer depth for nature elements（2-3层深度用于自然元素）"

    composition:
      aspect_ratio: "16:9"
      framing_principles:
        - "minimalist composition（极简构图）"
        - "generous negative space（充足负空间）"
        - "asymmetric balance（不对称平衡）"
        - "central focal point with breathing room（中心焦点+呼吸空间）"

      camera_perspective: "static with gentle pan（静止+轻微平移）"
      movement_philosophy: "slow and deliberate with gentle transitions（缓慢有意+柔和转场）"

    motion_design:
      animation_style: "slow and deliberate（缓慢有意）"
      easing_strategies: "gentle ease for all movements, linear for constant speed（所有运动柔和，恒速线性）"
      transition_language: "fade, soft slide, gentle wipe（淡入淡出、柔和滑动、温和擦除）"
      parallax_depth: "2-layer parallax for nature elements（2层视差用于自然元素）"

    typography:
      font_system:
        primary_font: "游明朝体 / 思源明朝体（标题、强调 - 明朝体）"
        secondary_font: "Noto Sans JP / 思源黑体（正文、信息 - 黑体）"
        font_pairing_rationale: "明朝体传达传统美学，黑体保证现代感"

      text_animation: "fade for information, gentle scale for emphasis（淡入信息，柔和缩放强调）"
      information_hierarchy: "title (明朝体, largest) → key terms (highlighted, gentle pulse) → explanation (黑体, medium) → details (smallest)"
      readability_standards: "contrast ratio 4.5:1 minimum, min size 24px for body text"

  post_production:
    editing_approach:
      rhythm_and_pacing: "slow and smooth, gentle transitions（缓慢流畅+柔和转场）"
      scene_transitions: "fade for gentle transitions, soft slide for flow（柔和转场淡入淡出，流畅柔和滑动）"
      parallel_editing: "N/A"
      montage_sequences: "N/A"

    visual_effects:
      vfx_requirements: "subtle cherry blossom particles, soft glow at key moments, gentle light leaks（微妙樱花粒子、关键时刻柔和发光、温和光漏）"
      compositing_standards: "blend modes: screen for glow, normal for overlay, multiply for depth（屏幕混合发光，正常叠加，正片叠底深度）"
      motion_graphics: "falling cherry blossoms, expanding ripples, soft glow animations（飘落樱花、扩散涟漪、柔和发光动画）"
      title_design: "elegant title card with sakura petals, soft glow, over washi paper background（优雅标题卡+樱花花瓣+柔和发光+和纸背景）"

    color_grading:
      grade_style: "warm and muted, subtle washi texture, consistent Japanese palette（温暖柔和+微妙和纸纹理+一致和风色调）"
      shot_matching: "match scenes with warm color grading, ensure consistent Japanese aesthetic（暖色调匹配+一致和风美学）"
      creative_looks: "soft glow at sakura, subtle light leaks for atmosphere, warm vignette for intimacy（樱花柔和发光、微妙光漏营造氛围、温暖暗角营造亲密感）"
      technical_standards: "rec.709 color space, gamma 2.4"

    audio_post:
      final_mix: "voice at -16 LUFS, music at -20 LUFS, SFX at -18 LUFS"
      sound_sweetening: "add soft reverb to voice, enhance nature sounds"
      music_editing: "fade in at scene starts, crossfade between scenes, soft ending"
      mastering: "final output at -16 LUFS, 48kHz stereo MP3"

    post_quality_gates:
      editing_check: "slow smooth pacing maintained, gentle transitions consistent"
      technical_check: "no glitches, audio sync within 0.1s"
      creative_check: "relaxation to calm to healing to serenity arc complete"
      consistency_check: "Japanese aesthetic with minimalist design consistent throughout"

  final_deliverables:
    master_files:
      video_master:
        format: "MP4 (H.264)"
        resolution: "1920x1080"
        frame_rate: "30 fps"
        bitrate: "20 Mbps"
        audio: "Stereo, 48kHz, 320 kbps"
```

---

**示例说明：**

1. **中国风示例**：展示传统中医文化，使用水墨美学和极简设计
2. **赛博朋克示例**：展示AI科技，使用霓虹美学和故障艺术
3. **和风示例**：展示禅意冥想，使用樱花元素和极简禅意

所有示例都完整展示了：
- **style_definition** 的定义和使用
- **风格映射** 到 visual_art 的各个字段
- **风格一致** 的整体设计
- **向后兼容**：保留 visual_aesthetic 等传统字段
