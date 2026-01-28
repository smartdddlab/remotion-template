## Complete Template

````yaml
# ============================================
# Video Director Production Framework (YAML)
# For: Professional video production with director's perspective
# Version: 5.0 (Pure design language, technology-agnostic)
# ============================================

video_director_framework:
  # ============ Director's Creative Vision ============
  director_vision:
    # ===== Core Creative Vision =====
    creative_vision: |
      Define the overall creative vision as the director:
      - Core message and narrative purpose (ONE sentence summary)
      - Emotional journey for the audience (start → development → climax → resolution)
      - Unique stylistic approach and artistic voice (cinematic/flat/minimalist/tech/illustrative)
      - Key visual and audio metaphors (maintained consistently across all scenes)
      #
      # 决策逻辑：
      # - 核心信息必须简洁有力，一句话概括
      # - 情感旅程要符合 scriptwriting.scenes 中的 emotional_tone
      # - 风格定位要影响 visual_art.cinematic_style 和 audio_design.musical_score
      # - 关键隐喻要在所有场景中保持一致性
      #
      # 关联字段：
      # - 影响：scriptwriting.narrative_structure
      # - 影响：scriptwriting.scenes[].emotional_tone
      # - 影响：visual_art.cinematic_style
      # - 影响：audio_design.sound_design
      #
      # 示例（科普视频）：
      # 核心信息：通过量子力学的奇异现象，激发观众对微观世界的好奇心
      # 情感旅程：好奇 → 震撼 → 启发 → 探索
      # 风格定位：cinematic with particle effects
      # 关键隐喻：量子纠缠用发光的连接线，薛定谔猫用半透明叠加
      #
      # 示例（商业视频）：
      # 核心信息：智能手表是健康管理的新时代
      # 情感旅程：痛点共鸣 → 解决方案兴奋 → 信任建立 → 行动呼吁
      # 风格定位：minimalist with clean typography
      # 关键隐喻：时间流动，健康数据可视化

    # ===== Video Style Definition (NEW) =====
    style_definition:
      # === 四维风格体系说明 ===
      # 视频风格是一个四维度概念，支持灵活组合：
      #
      # 维度1：文化风格 (Cultural Style)
      #   - 定义：基于地域文化传统的视觉语言特征
      #   - 可选值：chinese, japanese, korean, western, arabic, african, latino
      #   - 优先级：最高（文化特征最具辨识度）
      #
      # 维度2：时代风格 (Era Style)
      #   - 定义：基于历史时期的视觉审美特征
      #   - 可选值：classical, modern, future, retro, steampunk
      #   - 优先级：中等（时代特征影响整体氛围）
      #
      # 维度3：流派风格 (Genre Style)
      #   - 定义：基于艺术流派的视觉表达特征
      #   - 可选值：minimalist, cyberpunk, vaporwave, pop_art, abstract, hyper_realistic, cartoon
      #   - 优先级：中等（流派特征决定视觉语言）
      #
      # 维度4：技术风格 (Technical Style) - 现有visual_aesthetic字段
      #   - 定义：基于视觉表现技术风格的分类
      #   - 可选值：cinematic, graphic, illustrative, flat, minimalist, tech, hyper-realistic
      #   - 优先级：最低（技术实现层面）
      #
      # === 完整的风格映射流程 ===
      # 1. 用户定义 style_definition（文化+时代+流派风格）
      # 2. 系统自动映射到视觉元素：
      #    - color_palette: 从风格知识库获取配色方案
      #    - visual_elements: 从风格知识库获取视觉元素
      #    - typography: 从风格知识库获取字体建议
      #    - motion_design: 从风格知识库获取动画风格
      # 3. 技术风格（visual_aesthetic）作为实现层：
      #    - 如果定义了style_definition，technical_style自动推导
      #    - 如果未定义，使用现有的emotional_tone→visual_aesthetic映射
      #
      # === 向后兼容性和字段关系 ===
      # 优先级层次（从高到低）：
      # 1. 用户明确指定的style_definition参数
      # 2. style_definition映射生成的视觉元素
      # 3. 基于emotional_tone的传统映射
      # 4. 全局默认值
      #
      # 覆盖规则：
      # - 如果定义了style_definition，自动覆盖以下字段：
      #   ○ visual_art.cinematic_style.color_palette（完全覆盖）
      #   ○ visual_art.cinematic_style.visual_elements（完全覆盖）
      #   ○ visual_art.typography（推荐覆盖，可调整）
      #   ○ visual_art.motion_design（推荐覆盖，可调整）
      #   ○ visual_art.cinematic_style.texture_and_grain（部分覆盖）
      #   ○ visual_art.cinematic_style.lighting_philosophy（部分覆盖）
      #
      # - visual_aesthetic字段处理：
      #   ○ 如果定义了style_definition，visual_aesthetic根据风格自动推导
      #   ○ 如果未定义style_definition，visual_aesthetic保持用户指定值
      #   ○ 兼容模式：同时支持新旧两种配置方式
      #
      # === 风格冲突检测 ===
      # 系统自动检测不合理组合并警告：
      # - 文化-时代冲突：chinese + future（传统vs未来）
      # - 文化-流派冲突：japanese + cyberpunk（禅意vs科技）
      # - 时代-流派冲突：classical + cartoon（古典vs趣味）
      # - 流派-内容冲突：abstract + tutorial（抽象vs清晰）
      #
      # 冲突解决策略：
      # 1. 内容优先原则：根据内容主题重新评估风格组合
      # 2. 用户确认：向用户说明冲突，请求选择主导风格
      # 3. 混合创新：将冲突视为创新机会，设计新风格
      #
      # === 示例配置 ===
      # 示例1：现代中国风
      # cultural_style: "chinese"
      # era_style: "modern"
      # genre_style: "minimalist"
      # style_rationale: "用中国传统美学（水墨、留白）结合现代极简设计，传递传统文化的现代诠释"
      #
      # 示例2：赛博朋克科技
      # cultural_style: "western" (或留空)
      # era_style: "future"
      # genre_style: "cyberpunk"
      # style_rationale: "用赛博朋克的霓虹美学和故障艺术，传递科技未来的反乌托邦感"
      #
      # 示例3：和风治愈
      # cultural_style: "japanese"
      # era_style: "modern"
      # genre_style: "minimalist"
      # style_rationale: "用和风的极简禅意和樱花元素，营造治愈放松的氛围"
      #
      # === 迁移指南（从旧系统迁移）===
      # 旧系统：仅使用visual_aesthetic + emotional_tone映射
      # 新系统：推荐使用四维风格体系
      #
      # 迁移步骤：
      # 1. 分析现有visual_aesthetic值
      # 2. 转换为对应的style_definition组合
      # 3. 添加style_rationale说明转换逻辑
      # 4. 验证新配置与旧配置效果一致
      #
      # 转换示例：
      # visual_aesthetic: "cinematic" + emotional_tone: "inspiring"
      # → cultural_style: "western" + era_style: "modern" + genre_style: "minimalist"
      #
      cultural_style: "chinese / japanese / korean / western / arabic / african / latino (文化风格，可选)"
      era_style: "classical / modern / future / retro / steampunk (时代风格，可选)"
      genre_style: "minimalist / cyberpunk / vaporwave / pop_art / abstract / hyper_realistic / cartoon (流派风格，可选)"
      style_rationale: "为什么选择这个/这些风格？如何支持creative_vision？风格选择与内容主题的匹配关系。(必需)"

    # ===== Target Audience Analysis =====
    target_audience:
      # === 决策辅助 ===
      # demographics: 可选值 [general/professional/students/children]
      # 决策逻辑：决定 scriptwriting.language_level 和 visual_art.visual_complexity
      #
      # general → 通俗语言 + 中等复杂度 + 最少专业术语
      # professional → 专业术语 + 高复杂度 + 合理使用领域术语
      # students → 教学语言 + 中等到高复杂度 + 逐步引入术语
      # children → 简单语言 + 低到中复杂度 + 完全避免术语
      #
      demographics: "Describe age, interests, background (general/professional/students/children)"

      # viewing_context: 影响技术规格和视觉复杂度
      viewing_context: "Where and how will they watch? (mobile, desktop, theater)"

      # prior_knowledge: 影响 scriptwriting.information_density
      prior_knowledge: "What does the audience already know about this topic?"

      # emotional_needs: 决定 creative_vision 的情感旅程选择
      emotional_needs: "What emotional response should the video evoke?"

    # ===== Success Metrics =====
    success_metrics:
      # === 决策辅助 ===
      # engagement_goals: 可选值 [watch_time/completion_rate/shares/comments/likes]
      # 决策逻辑：视频类型不同，目标不同
      #
      # educational → watch_time + completion_rate（学习效果）
      # commercial → conversion_rate + shares（商业转化）
      # tutorial → completion_rate + comments（学习成果）
      # documentary → watch_time + shares（传播效果）
      #
      engagement_goals: "Target watch time, completion rate, shares, conversion rate"

      # learning_outcomes: 仅对 educational 和 tutorial 视频有效
      learning_outcomes: "Key takeaways for educational content (3-5 points max)"

      # brand_objectives: 仅对 commercial 视频有效
      brand_objectives: "Brand awareness, conversion goals, trust building"

      # artistic_aspirations: 影响视觉风格选择
      artistic_aspirations: "Creative achievements and innovations (visual quality, storytelling)"

  # ============ Scriptwriting & Narrative Design ============
  scriptwriting:
    # ===== Narrative Structure =====
    narrative_structure:
      # === 决策辅助 ===
      # story_arc: 根据视频类型从决策树选择
      # [three_act/problem_solution/sequential_steps/episodic]
      #
      # three_act: 问题引入(0-20%) → 概念解释(20-70%) → 实际应用(70-100%)
      #   适用：educational, documentary
      #   影响：visual_art.animation_style 需要流畅的转场
      #
      # problem_solution: 痛点呈现(0-30%) → 产品展示(30-80%) → 行动呼吁(80-100%)
      #   适用：commercial
      #   影响：visual_art.animation_style 需要清晰的功能展示
      #
      # sequential_steps: 准备(0-10%) → 步骤1(10-40%) → 步骤2(40-70%) → 验证(70-100%)
      #   适用：tutorial
      #   影响：visual_art.animation_style 需要清晰的步骤区分
      #
      # episodic: 第一章 → 第二章 → 第三章
      #   适用：documentary (long duration)
      #   影响：需要章回标题，visual_art.transition_language 需要明确
      #
      story_arc: "three_act (educational/documentary) / problem_solution (commercial) / sequential_steps (tutorial) / episodic (long documentary)"

      # pacing_strategy: 根据情感基调调整节奏
      # [fast/moderate/slow/variable]
      #
      # inspiring: moderate with emphasis at key moments（启发类：适中，关键时刻强调）
      # calm: slow and smooth（平静类：缓慢流畅）
      # suspense: slow build-up with fast reveals（悬疑类：慢铺垫快揭示）
      # professional: consistent moderate（专业类：持续适中）
      # playful: fast and energetic（活泼类：快节奏）
      #
      pacing_strategy: "fast/commercial / moderate/educational / slow/documentary / variable/long-form"

      # key_moments: 列出 3-5 个关键场景
      # 影响后续：这些场景需要 visual_art 的特殊处理（动画强调、音效配合）
      key_moments: "Pivotal scenes that drive the narrative forward (list 3-5 scenes)"

      # call_to_action: 商业视频必须，科普/教程视频可选
      call_to_action: "Desired audience response at conclusion (required for commercial, optional for others)"

    # ===== Character & Voice Development =====
    character_development:
      narrator_persona: "Voice characteristics, perspective, reliability"
      expert_voices: "Subject matter experts or additional perspectives"
      audience_surrogate: "How the audience identifies with the content"

    # ===== Dialogue & Narration Standards =====
    dialogue_standards:
      tone_consistency: "Maintaining consistent voice throughout"
      language_level: "Technical depth vs. accessibility balance"
      cultural_sensitivity: "Appropriate terminology and references"
      inclusivity: "Representation and inclusive language"

    # ===== Scene-by-Scene Script =====
    scenes:
      - scene_number: 1
        # timecode: 必须与音频时长匹配
        # 计算公式：每秒 3.8 字（中文）或 150 词/分钟（英文）
        timecode: "0:00 - 0:XX (calculate: duration_seconds × 3.8 chars/s)"

        # scene_objective: 每个场景必须有一个明确的目标
        # 影响后续：决定 visual_art 的重点和 audio_design 的音效选择
        scene_objective: "Primary purpose of this scene (e.g., introduce concept, explain method, show result)"

        # narrative_function: 说明这个场景如何推动整体故事
        # 影响后续：决定 transition_logic 的选择
        narrative_function: "How this scene advances the story (setup/conflict/resolution/climax)"

        # key_dialogue: 场景的具体文案
        # === 决策辅助 ===
        # 字数计算：target_chars = duration_seconds × 3.8
        # 误差范围：±5%（即 3.6-4.0 chars/s）
        # 语速要求：统一 speed=1.0，通过调整字数控制时长
        # 情感标注：在文案中标注重点（用**加粗**）
        #
        # 示例（15秒场景）：
        # "量子纠缠是物理学家**最震惊**的发现之一。（10字）
        # 两个粒子无论相距多远，都能**瞬间**相互影响。（13字）
        # 这似乎违反了**相对论**的光速限制。（11字）
        # 总计34字，34/15 = 2.27 字/秒... 太慢了
        # 需要调整为 15×3.8 = 57字左右
        #
        key_dialogue: |
          Write narration with calculated word count
          - Target chars: duration_seconds × 3.8
          - Adjust for emotional pacing and emphasis
          - Mark key terms with **bold** for emphasis

        # visual_direction: 视觉导演指导（纯设计语言）
        # 使用通用动画词汇描述画面，不与具体技术绑定
        visual_direction:
          # 场景视觉定位
          scene_visual_identity:
            perspective_scale: "intimate/personal/environmental/cosmic"
            scale_journey: "描述尺度变化，如'从 environmental 推进到 intimate'"

          # 构图策略
          composition:
            primary_rule: "rule_of_thirds/symmetry/golden_ratio/diagonal/frame_within_frame"
            focal_point: "center/center_left/center_right/top/bottom/golden_point"
            leading_elements: "引导视线的元素描述"
            negative_space: "负空间运用描述"

          # 光影设计
          lighting:
            mood: "soft_even/warm_contrast/cool_dramatic/high_key/low_key"
            key_light:
              direction: "front/back/top/bottom/left/right/top_left/top_right"
              quality: "hard/soft/diffused"
              color_temperature: "warm/neutral/cool"

          # 色彩策略
          color_strategy:
            dominant_tone: "主色调描述"
            contrast_approach: "complementary/analogous/triadic/monochromatic"
            saturation_arc: "饱和度变化描述"

          # 景深层次
          depth_layers:
            foreground:
              content: "前景内容描述"
              blur_level: "none/slight/moderate/heavy"
              opacity: 0.6
            midground:
              content: "主体内容描述"
              emphasis: "primary/secondary"
            background:
              content: "背景内容描述"
              blur_level: "none/slight/moderate/heavy"

          # 动态设计（通用动画词汇）
          motion:
            # 入场动画
            entrance:
              type: "fade_in / slide_from_left / slide_from_right / slide_from_top / slide_from_bottom / scale_up / scale_down / rotate_in"
              duration: "0.3s / 0.5s / 0.8s"
              easing: "linear / smooth / spring / bounce"

            # 持续动画
            continuous:
              type: "static / subtle_float / gentle_breathe / slow_rotate / pulse / drift"
              speed: "slow / medium / fast"

            # 强调动画（配合文案重点）
            emphasis:
              - trigger: "keyword: [具体词汇]"
                effect: "pop / scale_pulse / glow_intensify / color_shift / shake"
                intensity: "subtle / medium / strong"
              - trigger: "phrase: [具体短语]"
                effect: "highlight / underline / background_glow"

            # 出场动画
            exit:
              type: "fade_out / slide_to_left / slide_to_right / scale_down / dissolve"
              duration: "0.3s / 0.5s"
              easing: "smooth / abrupt"

          # 转场设计（通用转场词汇）
          transition:
            type: "cut / fade / dissolve / wipe_left / wipe_right / slide / zoom_in / zoom_out / match_cut"
            duration: "instant / quick(0.3s) / medium(0.5s) / slow(1s)"
            visual_bridge: "视觉连接元素描述"
            narrative_purpose: "转场的叙事目的"

        # emotional_tone: 决策树中的选择
        # [inspiring/calm/suspense/professional/playful]
        # 必须：与整体 creative_vision 的情感旅程一致
        # 影响后续：决定 visual_art.color_palette 和 audio_design.musical_score
        emotional_tone: "inspiring/calm/suspense/professional/playful (must align with overall vision)"

        # transition_logic: 到下一个场景的转场
        # 影响后续：决定 post_production 的 transition 类型
        # 转场类型：fade, cut, dissolve, wipe, zoom, slide, match
        transition_logic: "How this scene connects to next (fade/cut/dissolve/wipe/zoom/slide/match)"

    # ===== Script Quality Checkpoints =====
    script_quality_checks:
      narrative_flow: "Logical progression between scenes"
      pacing_validation: "Time allocation matches importance"
      clarity_assessment: "Clear communication of key concepts"
      engagement_test: "Each scene has compelling hook"

  # ============ Audio Design & Sound Direction ============
  audio_design:
    # ===== Voice Performance Direction =====
    voice_direction:
      casting_specifications:
        # voice_talent_profile: 根据情感基调选择
        # === 决策辅助 ===
        # inspiring: female-shaonv / female-warm（温暖有活力）
        # calm: male-calm / female-soothing（平静舒缓）
        # suspense: male-mystery / female-dramatic（紧张悬疑）
        # professional: male-authoritative / female-clear（专业权威）
        # playful: male-energetic / female-cute（活泼可爱）
        #
        # 决策逻辑：与 scriptwriting.emotional_tone 匹配
        # 关联字段：影响 performance_guidance.emotional_arc
        #
        voice_talent_profile: "Age (25-45), gender, accent (standard Mandarin), vocal qualities (warm/authoritative/energetic)"

        # emotional_range: 必须与场景的情感基调匹配
        # 影响：performance_guidance.emotional_arc
        emotional_range: "Required emotional expressiveness (inspiring/calm/suspense/professional/playful)"

        # technical_requirements: 已在 AGENTS.md 中定义
        technical_requirements: "Recording quality standards (speed=1.0, emotion=neutral, language_boost=Chinese)"

      performance_guidance:
        emotional_arc: "Emotional journey within each scene"
        pacing_variations: "Speed adjustments for emphasis"
        emphasis_points: "Key words and phrases to highlight"
        breath_and_pause: "Strategic pauses for impact"

    # ===== Sound Design Strategy =====
    sound_design:
      ambient_soundscape: "Background audio environment"
      sound_effects: "Specific effects to enhance visuals"
      musical_score: |
        # === 决策辅助 ===
        # 音乐风格：必须与 emotional_tone 和 visual_art.color_palette 匹配
        #
        # inspiring → upbeat orchestral / cinematic score with piano
        #   配色：teal + orange + dark blue
        #   乐器：管弦乐 + 钢琴
        #   节奏：moderate, uplifting
        #
        # calm → ambient piano / nature sounds
        #   配色：pastel blue + green + white
        #   乐器：钢琴 + 自然音（鸟鸣、流水）
        #   节奏：slow, peaceful
        #
        # suspense → minimalist drones / low-frequency
        #   配色：dark purple + red + black
        #   乐器：低音合成器 + 低频无人机音
        #   节奏：slow build-up
        #
        # professional → minimalist electronic / tech beats
        #   配色：navy blue + gray + accent blue
        #   乐器：电子合成器 + 科技节拍
        #   节奏：consistent, precise
        #
        # playful → upbeat pop / whimsical orchestral
        #   配色：bright yellow + pink + cyan
        #   乐器：快节奏流行乐 / 活泼管弦乐
        #   节奏：fast, energetic
        #
        # 决策逻辑：从决策树的 step2_emotion_design 选择
        # 关联字段：受 visual_art.color_palette 影响
        #
        # 声音混音规则：
        # - voice_level: -18 to -12 LUFS（人声主层）
        # - music_level: -24 to -20 LUFS（音乐在下层）
        # - 动态范围：8-12 LU
        # - 最终混音：-16 LUFS integrated
        #
        Music style, tempo, instrumentation
        - Specify style based on emotional_tone
        - Tempo: slow (<60 BPM), moderate (60-100 BPM), fast (>100 BPM)
        - Volume mixing: voice at -18 to -12 LUFS, music at -24 to -20 LUFS
      audio_transitions: "Crossfades, stingers, audio bridges"

    # ===== Technical Audio Specifications =====
    technical_specs:
      recording_standards:
        sample_rate: 48000  # Professional standard: 48kHz
        bit_depth: 24  # 24-bit for dynamic range
        format: "WAV"  # Lossless format for production

      mixing_standards:
        voice_level: "-18 to -12 LUFS"
        music_level: "-24 to -20 LUFS (under voice)"
        dynamic_range: "8-12 LU"
        loudness_normalization: "-16 LUFS integrated"

      spatial_audio:
        stereo_imaging: "Wide mono-compatible stereo"
        panning_strategy: "Positioning of sound elements"
        reverb_settings: "Context-appropriate acoustic space"

    # ===== Audio Quality Assurance =====
    audio_quality_assurance:
      technical_checks:
        - "No clipping or distortion"
        - "Consistent levels across scenes"
        - "No background noise or artifacts"
        - "Proper synchronization with visuals"

      creative_checks:
        - "Emotional impact matches intent"
        - "Pacing supports narrative flow"
        - "Audio elements complement visuals"
        - "Overall cohesive sound world"

  # ============ Visual Art & Cinematography ============
  visual_art:
    # ===== Cinematic Style Guide =====
    cinematic_style:
      # visual_aesthetic: 从 creative_vision 的风格定位选择
      # === 决策辅助 ===
      # [cinematic/graphic/illustrative/flat/minimalist/tech/hyper-realistic]
      #
      # cinematic: 电影感，适合 educational 和 documentary
      #   特征：深浅景深、动态照明、电影调色
      #   影响：motion_design.animation_style 需要流畅过渡
      #
      # graphic: 图形化，适合 tutorial 和 commercial
      #   特征：高对比度、清晰图标、扁平化
      #   影响：typography 需要简洁清晰
      #
      # illustrative: 插画式，适合 educational 和 children 内容
      #   特征：手绘风格、温暖色调、有机形态
      #   影响：animation_style 需要有节奏感
      #
      # flat: 扁平化，适合 tech 和 modern 风格
      #   特征：无阴影、纯色块、简洁几何
      #   影响：animation_style 需要精确运动
      #
      # minimalist: 极简主义，适合 professional 和高端品牌
      #   特征：大量留白、精确排版、有限色彩
      #   影响：composition 需要严格对齐
      #
      # tech: 科技感，适合 scientific 和 business 内容
      #   特征：霓虹、线条、粒子、数据可视化
      #   影响：animation_style 需要动态效果
      #
      # hyper-realistic: 超写实，适合 documentary 和产品展示
      #   特征：照片级质量、真实纹理、精确光照
      #   影响：rendering 需要高性能
      #
      visual_aesthetic: "cinematic/graphic/illustrative/flat/minimalist/tech/hyper-realistic"

      # ===== Style Integration (NEW) =====
      # 如果 director_vision.style_definition 已定义，以下字段将根据风格映射自动生成
      # 详细映射规则见：style-knowledge-base.md
      #
      # 风格映射示例：
      # style_definition: { cultural_style: "chinese", era_style: "modern", genre_style: "minimalist" }
      #   → 自动生成以下 color_palette, visual_elements, texture_and_grain, lighting_philosophy
      #
      # 如果未定义 style_definition，使用传统逻辑（基于 emotional_tone）
      #
      style_integration: |
        根据style_definition自动映射风格元素：
        - 如果定义了cultural_style/era_style/genre_style，从style-knowledge-base.md获取映射
        - 如果未定义，使用传统emotional_tone → color_palette映射
        - 风格映射优先级高于传统映射
      color_palette:
        # === 决策辅助（传统模式）===
        # 根据 emotional_tone 从决策树选择配色方案
        #
        # inspiring → teal (#00bfff) + orange (#ff6b35) + dark blue (#001f3f)
        #   teal: 好奇心、技术、探索
        #   orange: 能量、注意力、温暖
        #   dark blue: 深度、专业、稳重
        #
        # calm → pastel blue (#aec6cf) + green (#77dd77) + white (#ffffff)
        #   pastel blue: 平静、放松、治愈
        #   green: 自然、健康、生机
        #   white: 纯净、清晰、简洁
        #
        # suspense → dark purple (#663399) + red (#ff0000) + black (#000000)
        #   dark purple: 神秘、未知、期待
        #   red: 紧张、危险、警告
        #   black: 压力、未知、悬疑
        #
        # professional → navy blue (#001f3f) + gray (#808080) + accent blue (#007bff)
        #   navy blue: 专业、权威、信任
        #   gray: 中立、稳定、理性
        #   accent blue: 重点、行动、现代
        #
        # playful → bright yellow (#ffff00) + pink (#ff69b4) + cyan (#00ffff)
        #   bright yellow: 活力、快乐、注意
        #   pink: 可爱、活泼、友好
        #   cyan: 科技、现代、清新
        #
        # === 风格映射模式（如果定义了style_definition）===
        # 根据style_definition从style-knowledge-base.md获取配色
        #
        # 示例（中国风）：
        # primary_colors: ["#C41E3A (中国红)", "#8B0000 (深红)", "#000000 (水墨黑)"]
        # secondary_colors: ["#FFD700 (金)", "#2F4F4F (深青)", "#87CEEB (天青)", "#FFEFD5 (宣纸白)"]
        #
        # 示例（赛博朋克）：
        # primary_colors: ["#00FFFF (赛博青)", "#FF00FF (霓虹粉)", "#000000 (深黑)"]
        # secondary_colors: ["#1a1a2e (深紫蓝)", "#16213e (深蓝)", "#FF4500 (橙红)"]
        #
        # 示例（和风）：
        # primary_colors: ["#FFB7C5 (樱花粉)", "#FFFFFF (白)", "#F0F0F0 (灰白)"]
        # secondary_colors: ["#5B7C99 (蓝绿)", "#FFD700 (金)", "#8B4513 (棕)"]
        #
        # 决策逻辑：
        # - 优先使用 style_definition 的风格映射
        # - 如果未定义，使用 emotional_tone 的传统映射
        # 关联字段：必须与 audio_design.musical_score 一致
        #
        # 情感映射说明：
        # 每种颜色在视频中传递特定情感
        # primary_colors: 主色用于背景、主要元素（2-3色）
        # secondary_colors: 辅助色用于强调、过渡（2-3色）
        # emotional_mapping: 记录每种颜色对应的情感（用于审核检查）
        # progression_arc: 颜色如何在视频中演化（开场→发展→高潮→结束）
        #
        primary_colors: "2-3 dominant colors (specify HEX codes, or use style mapping)"
        secondary_colors: "Accent and highlight colors (2-3 accent colors, or use style mapping)"
        emotional_mapping: "How colors support narrative emotions (map each color to emotion)"
        progression_arc: "Color evolution through video (e.g., dark → bright → calm → accent)"

      # ===== Visual Elements (NEW) =====
      # 如果定义了 style_definition，从风格映射获取视觉元素
      # 如果未定义，保持空或手动定义
      visual_elements:
        # === 风格映射模式 ===
        # 根据style_definition从style-knowledge-base.md获取视觉元素
        #
        # 示例（中国风）：
        # motifs: ["祥云", "龙凤", "牡丹", "竹子", "荷花", "山水", "书法笔触"]
        # textures: ["宣纸纹理", "水墨晕染", "绢布质感"]
        # composition: ["对称构图", "留白艺术", "流动线条"]
        #
        # 示例（赛博朋克）：
        # motifs: ["霓虹灯", "全息投影", "机械义肢", "雨夜", "电路板", "数据流"]
        # textures: ["霓虹光晕", "扫描线", "故障效果", "金属质感"]
        # composition: ["高对比度", "倾斜角度", "多视点", "拥挤城市景观"]
        #
        # 示例（和风）：
        # motifs: ["樱花", "波浪纹", "富士山", "浮世绘线条", "几何图案"]
        # textures: ["和纸纹理", "渐变色彩", "细线纹理"]
        # composition: ["极简构图", "负空间利用", "不对称平衡"]
        #
        motifs: "视觉图案和母题（从风格映射获取，或手动定义）"
        textures: "视觉质感和纹理（从风格映射获取，或手动定义）"
        composition: "构图策略和原则（从风格映射获取，或手动定义）"

      texture_and_grain: "Visual texture treatment (or use style mapping)"
      lighting_philosophy: "Lighting style and mood creation (or use style mapping)"
      depth_strategy: "Foreground/midground/background relationships"

    # ===== Composition & Framing =====
    composition:
      aspect_ratio: "16:9, 1:1, 9:16, etc."
      framing_principles:
        - "Rule of thirds application"
        - "Leading lines and visual flow"
        - "Negative space utilization"
        - "Visual hierarchy establishment"

      camera_perspective: "Viewer's point of view"
      movement_philosophy: "Camera motion style and rationale"

    # ===== Motion Design (通用动画词汇) =====
    motion_design:
      # ===== Style Integration (NEW) =====
      # 如果定义了 style_definition，从风格映射获取动画风格
      # 如果未定义，使用传统逻辑（根据情感基调选择）
      #
      # 风格映射示例：
      # style_definition: { cultural_style: "chinese", genre_style: "minimalist" }
      #   → animation_style: "smooth with gentle flow"
      #   → easing_vocabulary: ["ease-in-out", "gentle ease"]
      #   → transition_language: ["fade", "dissolve", "ink dissolve"]
      #
      # style_definition: { genre_style: "cyberpunk" }
      #   → animation_style: "dynamic with glitch effects"
      #   → easing_vocabulary: ["snap", "elastic", "anticipate"]
      #   → transition_language: ["glitch", "digital wipe", "pixel dissolve"]
      #
      # style_definition: { cultural_style: "japanese" }
      #   → animation_style: "slow and deliberate"
      #   → easing_vocabulary: ["gentle ease", "linear"]
      #   → transition_language: ["fade", "slide", "soft wipe"]
      #
      # 全局动画风格
      # === 决策辅助（传统模式）===
      # 根据情感基调选择动画风格
      #
      # inspiring → dynamic with particle effects（动感+粒子效果）
      # calm → slow and smooth（缓慢流畅）
      # suspense → sharp cuts with timing accents（节奏+强调）
      # professional → clean geometric with consistent rhythm（精确几何）
      # playful → bouncy with character movements（弹跳+角色）
      #
      # === 风格映射模式 ===
      # 根据style_definition从style-knowledge-base.md获取动画风格
      #
      # 中国风 + 极简 → smooth with gentle flow
      # 赛博朋克 → dynamic with glitch effects
      # 和风 → slow and deliberate
      # 卡通 → bouncy and energetic
      #
      animation_style: "Motion characteristics and timing (or use style mapping)"

      # 缓动策略（通用描述）
      # === 风格映射模式 ===
      # 根据style_definition从style-knowledge-base.md获取缓动词汇
      #
      # 中国风 → ease-in-out, gentle ease
      # 赛博朋克 → snap, elastic, anticipate
      # 和风 → gentle ease, linear
      # 极简 → linear, smooth
      #
      easing_vocabulary:
        - "linear: 匀速运动，机械感"
        - "smooth: 平滑加减速，自然感"
        - "spring: 弹性回弹，活泼感"
        - "bounce: 弹跳效果，趣味感"
        - "dramatic: 强烈对比，冲击感"

      # 转场语言（通用描述）
      # === 风格映射模式 ===
      # 根据style_definition从style-knowledge-base.md获取转场语言
      #
      # 中国风 → fade, dissolve, ink dissolve (水墨溶解)
      # 赛博朋克 → glitch, digital wipe, pixel dissolve
      # 和风 → fade, slide, soft wipe
      # 极简 → cut, fade
      #
      transition_language:
        - "cut: 直接切换，干净利落"
        - "fade: 淡入淡出，柔和过渡"
        - "dissolve: 溶解融合，时间流逝"
        - "wipe: 擦除效果，方向感"
        - "slide: 滑动切换，空间感"
        - "zoom: 缩放转场，聚焦感"
        - "match_cut: 匹配剪接，关联感"

      # 视差深度
      parallax_depth: "Layered movement for depth"

    # ===== Typography & Graphic Design =====
    typography:
      # ===== Style Integration (NEW) =====
      # 如果定义了 style_definition，从风格映射获取字体建议
      # 如果未定义，使用传统逻辑（根据视频类型选择）
      #
      # 风格映射示例：
      # style_definition: { cultural_style: "chinese" }
      #   → primary_font: "方正舒体 / 汉仪行楷"
      #   → secondary_font: "思源宋体"
      #
      # style_definition: { genre_style: "cyberpunk" }
      #   → primary_font: "Orbitron / Rajdhani (英文科技感)"
      #   → secondary_font: "Roboto / 思源黑体"
      #
      # style_definition: { cultural_style: "japanese" }
      #   → primary_font: "游明朝体 / 思源明朝体"
      #   → secondary_font: "Noto Sans JP / 思源黑体"
      #
      font_system:
        # === 决策辅助（传统模式）===
        # 根据视频类型和情感基调选择字体
        #
        # educational → 清晰易读的无衬线字体
        # commercial → 现代专业的无衬线字体
        # tutorial → 清晰的等宽或无衬线字体
        # documentary → 经典衬线字体或现代无衬线
        #
        # === 风格映射模式 ===
        # 根据style_definition从style-knowledge-base.md获取字体
        #
        # 中国风 → 衬线中文书法体 + 宋体
        # 和风 → 明朝体 + 黑体
        # 赛博朋克 → 科技感英文 + 无衬线体
        # 极简 → 细线无衬线体
        # 卡通 → 卡通字体
        #
        primary_font: "Headlines and emphasis (or use style mapping)"
        secondary_font: "Body text and information (or use style mapping)"
        font_pairing_rationale: "Why these fonts work together (or use style mapping)"

      text_animation: "How text enters, emphasizes, exits"
      information_hierarchy: "Visual prioritization of text elements"
      readability_standards: "Contrast, size, and layout rules"

    # ===== Visual Quality Assurance =====
    visual_quality_assurance:
      consistency_checks:
        - "Color palette applied consistently"
        - "Typography hierarchy maintained"
        - "Animation language coherent"
        - "Style continuity across scenes"

      technical_checks:
        - "Resolution: 1920x1080 minimum"
        - "Frame rate: 30fps (or specified)"
        - "No visual artifacts or compression issues"
        - "Proper aspect ratio and safe zones"

  # ============ Post-Production & Editing ============
  post_production:
    # ===== Editing Philosophy =====
    editing_approach:
      # === 决策辅助 ===
      # rhythm_and_pacing: 根据 musical_score.tempo 和 scriptwriting.pacing_strategy 决定
      #
      # inspiring: moderate with emphasis at key moments（适中节奏，关键时刻强调）
      #   关键词：accelerate at revelation, slow at setup
      #
      # calm: slow and smooth（缓慢流畅）
      #   关键词：steady flow, long takes, gentle cuts
      #
      # suspense: slow build-up with fast reveals（慢铺垫快揭示）
      #   关键词：tension building, rapid cuts at climax
      #
      # professional: consistent moderate（持续适中）
      #   关键词：precise timing, predictable rhythm
      #
      # playful: fast and energetic（快节奏高能量）
      #   关键词：quick cuts, energetic pacing, sync with music beats
      #
      # 决策逻辑：从 scriptwriting.narrative_structure.pacing_strategy 推导
      # 关联字段：受 audio_design.musical_score.tempo 影响
      #
      rhythm_and_pacing: "Editorial rhythm matching narrative (specify: accelerate/slow at which moments)"

      # scene_transitions: 根据整体风格选择转场类型
      # === 决策辅助 ===
      # [fade/cut/dissolve/wipe/zoom/slide/match]
      #
      # fade: 柔和过渡，适合 calm 和 professional 基调
      #   fade in/out, crossfade between scenes
      #
      # cut: 直接切换，适合 suspense 和 professional 基调
      #   hard cuts, jump cuts for emphasis
      #
      # dissolve: 渐变融合，适合 inspiring 和 calm 基调
      #   dissolve to black, cross dissolve
      #
      # wipe: 扫擦过渡，适合 playful 和 tech 风格
      #   wipe left/right, iris wipe, geometric wipes
      #
      # zoom: 缩放过渡，适合 dramatic 和 cinematic 风格
      #   zoom in/out, push/pull, dolly zoom
      #
      # slide: 滑动过渡，适合 tutorial 和 graphic 风格
      #   slide up/down, diagonal slide, card slide
      #
      # match: 匹配剪接，适合 cinematic 和 professional 风格
      #   match cut to next scene, graphic match, action match
      #
      # 决策逻辑：必须与 scriptwriting.scenes[].transition_logic 一致
      # 关联字段：影响 visual_art.transition_language
      # 注意：同一视频内转场类型应该保持一致（或有目的的变化）
      #
      scene_transitions: "Transition types (fade/cut/dissolve/wipe/zoom/slide/match - must align with script transition_logic)"

      # parallel_editing: 仅适用于复杂叙事
      parallel_editing: "Simultaneous storylines if applicable (rarely used in educational content)"

      # montage_sequences: 用于压缩时间或展示多样信息
      montage_sequences: "Compressed time or information sequences (use for showing multiple examples or time passage)"

    # ===== Visual Effects & Compositing =====
    visual_effects:
      vfx_requirements: "Specific visual effects needed"
      compositing_standards: "Layer blending and integration"
      motion_graphics: "Animated graphic elements"
      title_design: "Opening and closing titles"

    # ===== Color Grading =====
    color_grading:
      grade_style: "Color treatment and mood enhancement"
      shot_matching: "Consistency across different scenes"
      creative_looks: "Special color treatments for key moments"
      technical_standards: "Color space and gamma specifications"

    # ===== Audio Post-Production =====
    audio_post:
      final_mix: "Balance of all audio elements"
      sound_sweetening: "Enhanced sound effects and textures"
      music_editing: "Music fitting to picture"
      mastering: "Final audio optimization for delivery"

    # ===== Post-Production Quality Gates =====
    post_quality_gates:
      editing_check: "Narrative clarity and flow"
      technical_check: "No glitches, proper synchronization"
      creative_check: "Emotional impact achieved"
      consistency_check: "Unified look and feel"

  # ============ Final Deliverables & Distribution ============
  final_deliverables:
    # ===== Master File Specifications =====
    master_files:
      video_master:
        format: "MP4 (H.264)"
        resolution: "1920x1080"
        frame_rate: "30 fps"
        bitrate: "20 Mbps"
        audio: "Stereo, 48kHz, 320 kbps"

      alternative_versions:
        - "Social media cuts (various aspect ratios)"
        - "Trailer or teaser versions"
        - "Silent versions for social media"
        - "Subtitled versions for accessibility"

    # ===== Delivery Specifications =====
    delivery_specs:
      file_naming: "Consistent naming convention"
      folder_structure: "Organized delivery package"
      metadata: "Technical and descriptive metadata"
      quality_control_report: "Final QC checklist completion"

    # ===== Distribution Strategy =====
    distribution:
      primary_platforms: "Main distribution channels"
      release_schedule: "Timing and sequencing"
      promotional_materials: "Supporting assets for promotion"
      performance_tracking: "Metrics and analytics requirements"

    # ===== Final Quality Assurance =====
    final_quality_assurance:
      technical_qa:
        - "Video plays without errors on target platforms"
        - "Audio clear and properly synchronized"
        - "File sizes appropriate for distribution"
        - "Metadata correctly embedded"

      creative_qa:
        - "Achieves creative vision and objectives"
        - "Engaging from start to finish"
        - "Clear communication of key messages"
        - "Professional production quality"

  # ============ Director's Review & Approval Process ============
  director_approval:
    # ===== 审核流程总览 =====

    导演审核流程分为 **4 个阶段关卡**，每个阶段必须在进入下一阶段前完成：

    ```yaml
    # 审核流程图
    approval_process_flow:
      stage_1_script_approval:
        trigger: "scriptwriting 模块填写完成"
        reviewer: "Director"
        criteria: "叙事结构、信息清晰度、情感一致性"
        next_stage: "audio_approval"
        reject_handling: "返回重新编辑 scriptwriting"

      stage_2_audio_approval:
        trigger: "audio_design 模块填写完成 + 音频文件生成"
        reviewer: "Director + Audio Director (AI validation)"
        criteria: "配音性能、音效设计、混音质量"
        next_stage: "visual_approval"
        reject_handling: "重新生成音频或调整音频设计"

      stage_3_visual_approval:
        trigger: "visual_art 模块填写完成 + 场景组件创建"
        reviewer: "Director + Art Director (视觉审核)"
        criteria: "视觉风格、构图、动画流畅度"
        next_stage: "final_approval"
        reject_handling: "调整视觉设计或动画参数"

      stage_4_final_approval:
        trigger: "post_production 完成 + 视频渲染输出"
        reviewer: "Director + Executive Producer (最终审核)"
        criteria: "整体质量、目标达成、技术指标"
        next_stage: "final_deliverables"
        reject_handling: "返工到前面任一阶段"
    ```

    # ===== Review Checkpoints =====
    review_checkpoints:
      script_approval:
        # === 审核检查表 ===
        # 必须逐项检查，所有项为 "✓ 通过" 才能进入下一阶段

        checklist:
          - [ ] 叙事结构完整性
            # 检查方法：阅读 scriptwriting.narrative_structure
            # 通过标准：故事弧线清晰，有明确的开始、发展、高潮、结束
            # 不通过示例：只有信息罗列，缺乏情感曲线

          - [ ] 情感基调一致性
            # 检查方法：对比 creative_vision 与各 scenes[].emotional_tone
            # 通过标准：所有场景的情感基调符合整体愿景（或有意的情感曲线变化）
            # 不通过示例：场景之间情感跳跃无逻辑原因

          - [ ] 信息密度合理性
            # 检查方法：计算每个场景的字数/时长比例
            # 通过标准：信息密度适中，每个场景 3.6-4.0 字/秒
            # 不通过示例：部分场景过快或过慢，影响理解

          - [ ] 转场逻辑连贯性
            # 检查方法：检查 scenes[].transition_logic 的连贯性
            # 通过标准：转场有明确逻辑（时间、空间、情感）
            # 不通过示例：转场随意，无叙事目的

        reviewer: "Director"
        criteria: "Narrative structure, clarity, engagement"
        approval_signoff: "Required before audio production"

        # 不通过的处理方案
        reject_handling: |
          返回重新编辑 scriptwriting：
          1. 不通过项 → 在 YAML 中标注问题
          2. 修改 → 调整不通过的检查项
          3. 重新审核 → 重新执行审核流程
          4. 最多 3 次迭代，超过需要重新评估决策树

      audio_approval:
        # === 审核检查表 ===

        checklist:
          - [ ] 配音性能符合预期
            # 检查方法：听取每个场景的音频文件
            # 通过标准：情感表达符合 scriptwriting.scenes[].emotional_tone
            # 不通过示例：配音情感与文案情感不匹配

          - [ ] 音效设计恰当
            # 检查方法：检查 audio_design.sound_design 的实现
            # 通过标准：音效增强视觉效果，不干扰人声
            # 不通过示例：音效过多或与场景无关

          - [ ] 音乐与视觉匹配
            # 检查方法：对比 musical_score 与 visual_art.color_palette
            # 通过标准：音乐风格、节奏、情感与画面一致
            # 不通过示例：音乐与画面情感冲突

          - [ ] 技术质量达标
            # 检查方法：使用音频分析工具验证
            # 通过标准：无削波、无噪声、电平一致
            # 不通过示例：有失真、背景噪声或电平差异

        reviewer: "Director + Audio Director"
        criteria: "Voice performance, sound design, mixing"
        approval_signoff: "Required before visual production"

        # 不通过的处理方案
        reject_handling: |
          返回重新生成或调整：
          1. 配音问题 → 重新生成音频（调整 voice_id 或 emotion 参数）
          2. 音效问题 → 调整 audio_design.sound_design
          3. 音乐问题 → 重新选择 musical_style 或调整 tempo
          4. 技术问题 → 重新生成音频或调整 technical_specs
          5. 最多 3 次迭代

      visual_approval:
        # === 审核检查表 ===

        checklist:
          - [ ] 视觉风格统一
            # 检查方法：对比所有场景的 visual_art 实现
            # 通过标准：所有场景遵循同一 visual_aesthetic
            # 不通过示例：场景之间风格混乱（有的 cinematic 有的 graphic）

          - [ ] 色彩一致性
            # 检查方法：检查 color_palette 在各场景的应用
            # 通过标准：主色、辅色使用一致，符合 emotional_mapping
            # 不通过示例：颜色随意变化，无情感逻辑

          - [ ] 构图合理性
            # 检查方法：检查每个场景的 composition 实现
            # 通过标准：遵循构图原则（三分法、视觉层级、负空间利用）
            # 不通过示例：元素拥挤、对齐混乱、视觉层级不清

          - [ ] 动画流畅度
            # 检查方法：预览每个场景的动画效果
            # 通过标准：动画流畅，转场自然，符合 easing_vocabulary
            # 不通过示例：动画卡顿、转场突兀、节奏混乱

          - [ ] 文字可读性
            # 检查方法：检查 typography 的实现
            # 通过标准：字体对比度足够，字号合理，层次清晰
            # 不通过示例：文字难以辨认，信息优先级混乱

        reviewer: "Director + Art Director"
        criteria: "Visual style, composition, animation"
        approval_signoff: "Required before post-production"

        # 不通过的处理方案
        reject_handling: |
          返回调整视觉设计：
          1. 风格问题 → 重新选择 visual_aesthetic 或调整风格一致性
          2. 色彩问题 → 重新设计 color_palette 或调整色彩应用
          3. 构图问题 → 调整 composition 规则或重新布局
          4. 动画问题 → 调整 animation_style 或 easing_vocabulary
          5. 文字问题 → 调整 typography 或字体系统
          6. 最多 3 次迭代

      final_approval:
        # === 审核检查表 ===

        checklist:
          - [ ] 整体节奏协调
            # 检查方法：完整播放视频，感受节奏
            # 通过标准：音视频节奏一致，情感曲线符合 creative_vision
            # 不通过示例：节奏混乱，情感表达不连贯

          - [ ] 技术质量达标
            # 检查方法：验证视频文件的技术规格
            # 通过标准：1920x1080 @ 30fps，无压缩伪影，无帧丢失
            # 不通过示例：分辨率不足、帧率不稳定、有技术故障

          - [ ] 音视频同步
            # 检查方法：检查关键场景的音画对齐
            # 通过标准：每个场景的音频与画面同步，误差 < 0.1 秒
            # 不通过示例：音频提前或滞后，声画不同步

          - [ ] 目标达成验证
            # 检查方法：对比 creative_vision 和 success_metrics
            # 通过标准：核心信息清晰传达，情感旅程完整
            # 不通过示例：信息模糊，情感表达偏离预期

          - [ ] 播放测试通过
            # 检查方法：在目标平台播放完整视频
            # 通过标准：从头到尾无错误，无卡顿，观感流畅
            # 不通过示例：有加载失败、播放中断、兼容性问题

        reviewer: "Director + Executive Producer"
        criteria: "Overall quality, objective achievement"
        approval_signoff: "Required before distribution"

        # 不通过的处理方案
        reject_handling: |
          返回返工：
          1. 节奏问题 → 调整 post_production.editing_approach
          2. 技术问题 → 重新渲染或调整 technical_specs
          3. 同步问题 → 检查音频配置和场景时间同步
          4. 目标问题 → 返回修改 creative_vision 或关键场景
          5. 播放问题 → 调整输出格式或检查编码设置
          6. 最多 2 次迭代（最终阶段应快速修复）

    # ===== Change Management =====
    change_management:
      revision_process: "Structured feedback and iteration"
      version_control: "Tracking changes and approvals"
      scope_management: "Handling requested changes"
      final_lock: "Point of no further changes"

    # ===== Documentation & Archival =====
    documentation:
      production_notes: "Key decisions and rationales"
      asset_archive: "Organized source files and assets"
      style_guide: "Reference for future productions"
      post_mortem: "Lessons learned and improvements"

# ============================================
# Appendix: Universal Animation Vocabulary
# ============================================
#
# 通用动画词汇表（技术无关）
# 实现者根据这些描述选择合适的技术方案
#
# ----- 入场动画 (Entrance) -----
# fade_in: 透明度从0到1
# slide_from_left/right/top/bottom: 从指定方向滑入
# scale_up: 从0放大到1
# scale_down: 从大于1缩小到1
# rotate_in: 旋转进入
# typewriter: 逐字显示
#
# ----- 持续动画 (Continuous) -----
# static: 静止不动
# subtle_float: 轻微上下浮动
# gentle_breathe: 轻微缩放呼吸效果
# slow_rotate: 缓慢旋转
# pulse: 透明度或缩放脉动
# drift: 缓慢漂移
#
# ----- 强调动画 (Emphasis) -----
# pop: 弹性放大后回弹
# scale_pulse: 缩放脉动
# glow_intensify: 发光增强
# color_shift: 颜色变化
# shake: 轻微震动
# highlight: 高亮显示
# underline: 下划线出现
# background_glow: 背景发光
#
# ----- 出场动画 (Exit) -----
# fade_out: 透明度从1到0
# slide_to_left/right/top/bottom: 滑向指定方向
# scale_down: 缩小消失
# dissolve: 溶解消失
#
# ----- 转场动画 (Transition) -----
# cut: 直接切换
# fade: 淡入淡出
# dissolve: 交叉溶解
# wipe_left/right/top/bottom: 擦除效果
# slide: 滑动切换
# zoom_in/out: 缩放转场
# match_cut: 匹配剪接
#
# ----- 缓动描述 (Easing) -----
# linear: 匀速
# smooth: 平滑加减速
# spring: 弹性
# bounce: 弹跳
# dramatic: 强烈对比
#
# ----- 强度描述 (Intensity) -----
# subtle: 微妙/轻微
# medium: 中等
# strong: 强烈
#
# ----- 速度描述 (Speed) -----
# slow: 慢速 (0.8s+)
# medium: 中速 (0.3-0.8s)
# fast: 快速 (<0.3s)
# instant: 瞬间
#
# ============================================
# Director's Usage Instructions:
# 1. Fill in each section with specific creative and technical decisions
# 2. Use this framework to guide all production discussions and decisions
# 3. Reference relevant sections during each production phase
# 4. Complete approval checkpoints before advancing to next phase
# 5. Update documentation as production evolves
# ============================================
````
