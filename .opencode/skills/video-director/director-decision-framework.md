## Director's Decision Framework

作为专业导演，你的核心职责是在**前期规划**就统筹全局考量各阶段的实际情况，而不是在工作流协调时才发现问题。这个框架指导你如何像导演一样思考。

### 输入分析：从文案中提取关键信息

在开始规划前，先分析用户的输入（视频文案/主题描述），提取以下关键信息：

```yaml
# 输入分析检查表
input_analysis:
  # 1. 视频类型识别
  video_type:
    educational: "科普/教育类（解释概念、传授知识）"
    commercial: "商业/产品类（推广产品、提升品牌）"
    tutorial: "教程类（步骤教学、技能学习）"
    documentary: "纪录片类（讲述故事、记录事实）"

  # 2. 核心主题分析
  core_theme:
    scientific: "科学/技术（量子物理、人工智能、生物学）"
    business: "商业/经济（市场营销、金融、管理）"
    lifestyle: "生活方式（健康、旅行、美食）"
    entertainment: "娱乐/文化（电影、音乐、艺术）"

  # 3. 情感基调识别
  emotional_tone:
    inspiring: "激发/启发性（激发好奇心、探索欲）"
    calm: "平静/温和（舒缓、放松、治愈）"
    suspense: "悬疑/紧张（制造期待、揭示真相）"
    professional: "专业/权威（信任感、可靠性）"
    playful: "活泼/趣味（轻松、幽默、互动）"

  # 4. 风格识别（NEW）
  style_recognition:
    explicit_style:
      - "用户明确指定风格（如'中国风视频'、'赛博朋克风格'）"
      - "直接使用指定风格"
    implicit_style:
      - "根据内容主题推荐风格"
      - "传统文化 → cultural_style: 'chinese'"
      - "科技未来 → era_style: 'future' + genre_style: 'cyberpunk'"
      - "治愈放松 → genre_style: 'minimalist' or cultural_style: 'japanese'"

  # 5. 目标时长规划
  target_duration:
    short: "< 60s（社交媒体、广告）"
    medium: "60-180s（YouTube、B站视频）"
    long: "> 180s（纪录片、深度讲解）"

  # 6. 目标受众分析
  target_audience:
    general: "大众（广泛受众，易理解）"
    professional: "专业人士（领域专家，深度内容）"
    students: "学生（教育内容，循序渐进）"
    children: "儿童（简单生动，视觉化）"
```

### 导演决策树：基于分析结果的专业推荐

作为导演，你需要基于输入分析结果，做出一系列相互关联的专业决策。以下是决策树和决策逻辑：

```yaml
# 导演决策树（从上到下执行）
director_decision_tree:

  # 步骤 0：智能风格决策流程（ENHANCED）
  step0_intelligent_style_decision:
    # === 决策流程：严格的风格处理逻辑 ===
    decision_flow:
      # 阶段 1：检查用户是否明确指定风格
      stage1_explicit_style_check:
        # 检查用户输入中是否包含明确的风格关键词
        # 明确风格：chinese, japanese, cyberpunk, minimalist 等预定义风格
        # 泛风格：cool, modern, advanced, professional 等模糊描述
        check_result:
          explicit_style_found: "处理场景1：用户明确指定风格"
          vague_style_found: "处理场景2：用户指定了模糊风格，需要引导澄清"
          no_style_found: "进入阶段2：尝试自动识别"

      # 阶段 2：尝试自动风格识别
      stage2_auto_style_recognition:
        # 基于内容主题、情感基调、视频类型的综合推荐
        recognition_methods:
          content_based_analysis: "分析文案内容，提取主题关键词"
          emotion_based_analysis: "分析情感基调，推荐匹配风格"
          video_type_analysis: "根据视频类型推荐默认风格"

        confidence_level:
          high_confidence: "置信度高（>80%），自动应用推荐风格"
          medium_confidence: "置信度中等（50-80%），向用户确认推荐"
          low_confidence: "置信度低（<50%），停止并请求用户指定风格"

      # 阶段 3：用户交互和确认
      stage3_user_interaction:
        # 根据识别结果决定交互策略
        interaction_strategies:
          confirm_high_confidence: "展示高置信度推荐，询问用户是否确认"
          clarify_vague_style: "引导用户澄清模糊风格（如'酷炫的'具体是什么）"
          suggest_options: "提供2-3个风格选项让用户选择"
          request_specific_style: "明确请求用户指定风格"

    # === 场景1：用户明确指定风格 ===
    explicit_style_input:
      chinese →
        cultural_style: "chinese"
        era_style: "modern" (默认现代中国风，可根据内容调整)
        genre_style: "minimalist" (默认，可调整)
        confidence: "high"

      japanese →
        cultural_style: "japanese"
        era_style: "modern"
        genre_style: "minimalist"
        confidence: "high"

      cyberpunk →
        cultural_style: "western" (或留空)
        era_style: "future"
        genre_style: "cyberpunk"
        confidence: "high"

      minimalist → genre_style: "minimalist" + era_style: "modern"
      cartoon → genre_style: "cartoon" + era_style: "modern"
      vaporwave → genre_style: "vaporwave" + era_style: "retro"
      steampunk → genre_style: "steampunk" + era_style: "classical"
      pop_art → genre_style: "pop_art" + era_style: "modern"
      abstract → genre_style: "abstract" + era_style: "modern"
      hyper_realistic → genre_style: "hyper_realistic" + era_style: "modern"

    # === 场景2：模糊风格处理（需要澄清）===
    vague_style_clarification:
      # 用户使用了模糊描述，需要引导澄清
      vague_terms:
        cool: "请具体说明：是科技感（cyberpunk）还是现代感（modern minimalist）？"
        modern: "请具体说明：是现代极简（minimalist）还是现代科技（tech）？"
        advanced: "请具体说明：是高科技（future tech）还是专业感（professional minimalist）？"
        professional: "请具体说明：是专业极简（minimalist）还是商业风（corporate graphic）？"
        creative: "请具体说明：是艺术抽象（abstract）还是手绘创意（illustrative）？"
        elegant: "请具体说明：是典雅中国风（chinese）还是简约和风（japanese minimalist）？"
        fun: "请具体说明：是卡通趣味（cartoon）还是活泼波普（pop_art）？"

      # 澄清后的映射建议
      clarification_mapping:
        "科技感 / 未来感" → era_style: "future" + genre_style: "cyberpunk"
        "现代感 / 简约" → era_style: "modern" + genre_style: "minimalist"
        "艺术感 / 创意" → genre_style: "abstract" or "illustrative"
        "传统文化感" → cultural_style: "chinese" or "japanese"
        "复古怀旧" → era_style: "retro" + genre_style: "vaporwave"
        "专业商务" → genre_style: "minimalist" + visual_aesthetic: "graphic"

    # === 场景3：根据内容主题自动推荐 ===
    content_based_recommendation:
      # 传统文化主题
      传统文化 / 古诗词 / 水墨画 / 中国文化 / 中医 / 国学 → 
        cultural_style: "chinese"
        era_style: "modern"
        genre_style: "minimalist"
        confidence: "high"

      # 科技主题
      科技 / 人工智能 / AI / 未来 / 宇宙 / 机器人 / 编程 → 
        era_style: "future"
        genre_style: "cyberpunk"
        confidence: "high"

      # 教育/科普主题
      教育 / 科普 / 知识 / 教学 / 学习 / 教程 → 
        genre_style: "minimalist" or "illustrative"
        visual_aesthetic: "graphic"
        confidence: "high"

      # 治愈/放松主题
      治愈 / 放松 / 冥想 / 睡眠 / 心理健康 / 正念 → 
        cultural_style: "japanese"
        era_style: "modern"
        genre_style: "minimalist"
        confidence: "high"

      # 复古主题
      复古 / 90年代 / 怀旧 / 老物件 / 复古风 → 
        era_style: "retro"
        genre_style: "vaporwave"
        confidence: "high"

      # 商业/产品主题
      商业 / 产品 / 营销 / 品牌 / 企业 / 创业 → 
        genre_style: "minimalist"
        visual_aesthetic: "graphic"
        confidence: "medium"

      # 自然/环境主题
      自然 / 环境 / 生态 / 植物 / 动物 / 环保 → 
        genre_style: "illustrative"
        confidence: "medium"

      # 艺术/文化主题
      艺术 / 文化 / 音乐 / 电影 / 文学 → 
        genre_style: "abstract" or "illustrative"
        confidence: "medium"

    # === 场景4：根据情感基调自动推荐 ===
    emotion_based_recommendation:
      inspiring → 
        cultural_style: "chinese" (启发+东方智慧) 
        or genre_style: "minimalist"
        confidence: "medium"

      calm → 
        cultural_style: "japanese"
        or genre_style: "minimalist"
        confidence: "high"

      suspense → 
        genre_style: "cyberpunk"
        or cultural_style: "western"
        confidence: "high"

      professional → 
        genre_style: "minimalist"
        era_style: "modern"
        visual_aesthetic: "graphic"
        confidence: "high"

      playful → 
        genre_style: "cartoon" 
        or "pop_art"
        era_style: "modern"
        confidence: "high"

    # === 场景5：根据视频类型默认推荐 ===
    video_type_default_recommendation:
      educational → 
        genre_style: "minimalist"
        visual_aesthetic: "graphic"
        confidence: "high"

      commercial → 
        genre_style: "minimalist"
        visual_aesthetic: "graphic"
        confidence: "high"

      tutorial → 
        genre_style: "minimalist"
        visual_aesthetic: "graphic"
        confidence: "high"

      documentary → 
        visual_aesthetic: "cinematic"
        confidence: "medium"

    # === 场景6：未定义风格处理 ===
    undefined_style_handling:
      # 用户提出了不在定义范围内的风格
      handling_strategy: |
        1. 识别用户意图：分析用户想要表达的视觉感受
        2. 提供最接近的风格选项：基于关键词匹配推荐2-3个最接近的预定义风格
        3. 请求确认：询问用户是否接受推荐的风格，或需要进一步澄清
        4. 记录新风格：如果用户坚持使用新风格，记录并手动定义风格映射

      example_responses:
        - "您提到的'XX风格'目前不在我们的预定义风格库中。最接近的选项是：A、B、C。您希望使用哪一个？"
        - "我理解您想要'XX感觉'的视频。根据您的描述，推荐使用'YY风格'，它具有类似的视觉特征。您觉得合适吗？"
        - "为了更好地实现您的创意，可以具体描述一下'XX风格'的视觉特点吗？（例如：色彩、元素、氛围）"

    # === 置信度计算和决策 ===
    confidence_calculation:
      # 计算风格推荐的置信度
      factors:
        keyword_match: "用户输入中风格关键词的匹配度（0-100%）"
        content_relevance: "风格与内容主题的相关性（0-100%）"
        emotion_alignment: "风格与情感基调的匹配度（0-100%）"
        video_type_fit: "风格与视频类型的适配度（0-100%）"

      decision_rules:
        high_confidence: "总置信度 > 80% → 自动应用，询问用户确认"
        medium_confidence: "总置信度 50-80% → 提供推荐选项，让用户选择"
        low_confidence: "总置信度 < 50% → 停止，请求用户明确指定风格"

      minimum_confidence_threshold: "50%（低于此值必须用户确认）"

    # === 主动推荐策略 ===
    proactive_recommendation:
      # 在适当的时候主动推荐风格
      recommendation_triggers:
        - "用户没有指定任何风格时"
        - "用户指定了模糊风格需要澄清时"
        - "内容主题非常明确时（如'量子物理'→cyberpunk）"
        - "情感基调非常强烈时（如'悬疑紧张'→cyberpunk）"

      recommendation_format: |
        基于您的[内容主题/情感基调/视频类型]，我推荐使用**[风格名称]**风格。
        理由：[风格与内容的匹配说明]
        视觉特点：[主要视觉特征]
        您觉得这个推荐合适吗？还是您有其他偏好的风格？

    # === 风格冲突检测与解决 ===
    style_conflict_resolution:
      # 检测不合理组合
      conflict_examples:
        - "chinese + cyberpunk" (冲突：传统vs未来)
        - "classical + vaporwave" (冲突：古典vs波普)
        - "cartoon + professional" (冲突：趣味vs专业)
        - "abstract + tutorial" (冲突：抽象vs教程)

      # 解决策略
      resolution_strategies:
        priority_based: "根据优先级选择：cultural > era > genre"
        content_based: "根据内容主题重新评估"
        user_consultation: "向用户说明冲突，请求选择主导风格"

      conflict_warning_template: |
        注意：检测到潜在风格冲突。
        [风格A]和[风格B]在视觉表现上可能存在不协调。
        建议：[解决方案]
        您希望如何调整？

  # 步骤 1：根据视频类型 → 推荐脚本结构
  step1_script_structure:
    educational → three_act_structure
      # 理由：科普视频需要完整的故事弧线
      # 结构：问题引入 → 概念解释 → 实际应用
    commercial → problem_solution_structure
      # 理由：商业视频直接回应用户痛点
      # 结构：痛点呈现 → 产品解决方案 → 行动呼吁
    tutorial → sequential_steps_structure
      # 理由：教程需要清晰的步骤流程
      # 结构：准备 → 步骤1 → 步骤2 → 验证
    documentary → episodic_structure
      # 理由：纪录片可以分段讲述
      # 结构：第一章 → 第二章 → 第三章
  
  # 步骤 2：根据情感基调 → 推荐色彩策略 + 音乐类型
  step2_emotion_design:
    inspiring → 
      color_palette: "teal + orange + dark blue"（激发好奇心）
      music_style: "upbeat orchestral with piano"（探索感）
      animation_style: "dynamic with particle effects"（动感）
    calm →
      color_palette: "pastel blue + green + white"（舒缓放松）
      music_style: "ambient piano with nature sounds"（宁静）
      animation_style: "slow and smooth transitions"（流畅）
    suspense →
      color_palette: "dark purple + red + black"（紧张感）
      music_style: "minimalist with low-frequency drones"（悬念）
      animation_style: "sharp cuts with timing accents"（节奏）
    professional →
      color_palette: "navy blue + gray + accent blue"（专业权威）
      music_style: "minimalist electronic"（现代感）
      animation_style: "clean geometric with consistent rhythm"（精确）
    playful →
      color_palette: "bright yellow + pink + cyan"（活泼趣味）
      music_style: "upbeat pop or whimsical orchestral"（趣味）
      animation_style: "bouncy with character movements"（可爱）
  
  # 步骤 3：根据目标时长 → 推荐场景数量 + 节奏策略
  step3_duration_strategy:
    short (< 60s) →
      scene_count: "1-2 scenes"（简洁有力）
      pacing: "fast"（快速信息密度）
      voice_speed: "3.8-4.1 chars/s"（紧凑）
    medium (60-180s) →
      scene_count: "3-5 scenes"（完整叙事）
      pacing: "moderate"（平衡信息与节奏）
      voice_speed: "3.6-3.8 chars/s"（适中）
    long (> 180s) →
      scene_count: "6-10 scenes + chapter breaks"（深度内容）
      pacing: "variable with pacing changes"（变化节奏）
      voice_speed: "3.5-3.7 chars/s"（从容）
      voice_variation: "multiple voice types"（避免疲劳）
  
  # 步骤 4：根据目标受众 → 调整语言深度 + 视觉复杂度
  step4_audience_adaptation:
    general →
      language_level: "accessible with simple analogies"（通俗）
      visual_complexity: "medium"（中等）
      technical_jargon: "minimal"（少用）
    professional →
      language_level: "technical with precise terminology"（专业）
      visual_complexity: "high"（高）
      technical_jargon: "appropriate to field"（合理使用）
    students →
      language_level: "educational with examples"（教学式）
      visual_complexity: "medium to high"（逐步提升）
      technical_jargon: "introduced gradually"（逐步引入）
    children →
      language_level: "simple with visual metaphors"（形象化）
      visual_complexity: "low to medium"（简单）
      technical_jargon: "avoid entirely"（避免）
```

### 跨阶段依赖关系图

导演的核心能力是预判各阶段如何相互影响。以下依赖关系必须在前期规划时考虑：

```yaml
# 跨阶段依赖关系（从上游到下游的连锁影响）
cross_stage_dependencies:
  
  # 剧本 → 影响的下游决策
  script_impacts:
    narrative_structure:
      → determines: "visual_art.animation_style"
      # 理由：三幕式需要动态过渡，步骤式需要清晰的视觉区分
    
    emotional_tone:
      → determines: "visual_art.color_palette"
      → determines: "audio_design.musical_score"
      # 理由：情感基调是视觉和音频设计的基础
    
    scene_duration:
      → determines: "audio_design.voice_pacing"
      → determines: "post_production.editing_rhythm"
      # 理由：场景时长决定音视频的节奏匹配
    
    information_density:
      → determines: "visual_art.typography_hierarchy"
      # 理由：信息密度决定文字的优先级和显示方式
  
  # 视觉设计 → 影响的下游决策
  visual_impacts:
    color_palette:
      → determines: "audio_design.music_style"
      → determines: "post_production.color_grading"
      # 理由：色彩和音乐风格需要情感一致
    
    animation_style:
      → determines: "audio_design.sound_effects"
      → determines: "post_production.transition_types"
      # 理由：动画节奏需要音效配合
    
    composition:
      → determines: "post_production.frame_timing"
      # 理由：构图决定剪辑的切点选择
  
  # 音频设计 → 影响的下游决策
  audio_impacts:
    music_tempo:
      → determines: "post_production.editing_rhythm"
      # 理由：音乐节奏驱动剪辑节奏
    
    voice_emotion:
      → determines: "visual_art.animation_timing"
      # 理由：配音情感影响动画的强度曲线
    
    sound_effects:
      → determines: "post_production.visual_effects"
      # 理由：音效和视觉特效同步产生冲击力
  
  # 后期制作 → 最终质量验证
  post_production_validation:
    editing_check:
      → validates: "script.pacing_accuracy"
      # 理由：剪辑节奏验证剧本的节奏规划
    
    color_grading:
      → validates: "visual_art.color_consistency"
      # 理由：调色验证美术的色彩策略
    
    final_mix:
      → validates: "audio_design.emotional_impact"
      # 理由：最终混音验证音频的情感表达
```

### 决策依据：专业标准说明

作为导演，你的每一个决策都应该有明确的专业依据：

```yaml
# 决策依据库
professional_standards:
  
  # 脚本结构决策依据
  script_structure_standards:
    three_act_structure:
      standard: "好莱坞经典叙事结构"
      rationale: "问题-解决-启示的完整弧线，最能保持观众注意力"
      evidence: "研究表明，三幕式结构的信息留存率比线性结构高 35%"
    
    problem_solution_structure:
      standard: "商业视频标准结构"
      rationale: "直接回应用户痛点，快速建立价值认知"
      evidence: "A/B 测试显示，问题-解决方案结构转化率提升 27%"
  
  # 情感基调决策依据
  emotional_tone_standards:
    inspiring:
      standard: "科普视频的情感基准"
      rationale: "激发好奇心和学习动力，降低知识焦虑"
      evidence: "教育心理学研究显示，启发性基调提升学习效率 22%"
    
    professional:
      standard: "商业和科技视频的信任基准"
      rationale: "建立权威感和可靠性，降低决策风险"
      evidence: "信任度调查显示，专业基调提升品牌信任度 40%"
  
  # 色彩策略决策依据
  color_strategy_standards:
      standard: "主色-辅色-强调色的三色体系"
      rationale: "有限色板避免视觉混乱，确保信息层次"
      evidence: "色彩心理学研究，3色体系的视觉识别度最高"
    
    emotional_color_mapping:
      standard: "色彩与情感对应表"
      rationale: "色彩潜意识传递情感，增强叙事力"
      evidence: "广告效果研究，情感匹配的色彩提升品牌记忆度 33%"
  
  # 节奏策略决策依据
  pacing_strategy_standards:
    information_density:
      standard: "每秒 3.6-4.1 个字符（中文）"
      rationale: "符合人类认知处理速度，避免过载或无聊"
      evidence: "语音合成研究，此范围的信息留存率最高"
    
    pacing_variations:
      standard: "关键信息处减速，次要信息处加速"
      rationale: "节奏变化保持注意力，避免单调"
      evidence: "注意力研究，节奏变化延长有效观看时间 45%"
```

### 导演决策清单

在开始填写 YAML 模板前，完成以下检查：

```yaml
# 导演决策前置检查表
director_pre_flight_check:

  # 输入分析验证
  input_analysis_verification:
    - [ ] 视频类型已识别（educational/commercial/tutorial/documentary）
    - [ ] 核心主题已提取（scientific/business/lifestyle/entertainment）
    - [ ] 情感基调已确定（inspiring/calm/suspense/professional/playful）
    - [ ] 风格已识别（明确指定或根据内容/情感推荐）
    - [ ] 目标时长已规划（short/medium/long）
    - [ ] 目标受众已分析（general/professional/students/children）

  # 决策树执行验证
  decision_tree_execution:
    - [ ] 脚本结构已根据视频类型确定
    - [ ] 风格定义已根据用户输入或内容主题确定
    - [ ] 风格冲突已检测并解决（如 chinese + cyberpunk）
    - [ ] 色彩策略已根据风格映射或情感基调确定
    - [ ] 音乐类型已与风格或色彩策略匹配
    - [ ] 场景数量已根据时长规划确定
    - [ ] 语言深度已根据受众调整

  # 跨阶段依赖验证
  cross_stage_dependency_check:
    - [ ] 剧本的 narrative_structure 已考虑对 visual_art.animation_style 的影响
    - [ ] 剧本的 emotional_tone 已考虑对 audio_design.musical_score 的影响
    - [ ] style_definition 已正确映射到 visual_art 的所有字段
    - [ ] 视觉的 color_palette 已考虑与 music_style 的一致性
    - [ ] 音频的 music_tempo 已考虑对 post_production.editing_rhythm 的影响
    - [ ] 所有决策都有专业标准依据

  # 决策一致性验证
  consistency_verification:
    - [ ] 所有场景的情感基调一致（或有意变化）
    - [ ] 视觉风格在所有场景中统一（遵循 style_definition）
    - [ ] 音频风格与视觉风格匹配
    - [ ] 节奏策略支持叙事目标
    - [ ] 所有决策服务于核心创作愿景

  # 风格系统验证（NEW）
  style_system_verification:
    - [ ] style_definition 已正确定义（cultural/era/genre）
    - [ ] 风格映射已应用（color_palette, visual_elements, typography, motion_design）
    - [ ] 风格冲突已检测（不合理组合已警告或解决）
    - [ ] Baoyu-skills 图像生成参数已根据风格映射
    - [ ] 风格与情感基调、视频类型一致
```

---

