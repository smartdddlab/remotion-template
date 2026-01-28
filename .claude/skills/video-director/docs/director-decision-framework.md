## 导演决策框架

作为专业导演，你的核心职责是在**前期规划**就统筹全局考量各阶段的实际情况，而不是在工作流协调时才发现问题。这个框架指导你如何像导演一样思考。

### 输入分析：从文案中提取关键信息

#### 🚨 第一步：输入验证（强制）

在分析之前，必须先验证用户输入是否满足**内容充足性标准**：

```yaml
# 输入验证检查表（必须全部通过才能继续）
input_validation:
  # 检查1：是否存在具体内容
  has_specific_content:
    check: "用户输入是否包含具体的内容描述、脚本或场景分解？"
    reject_if: "仅提供主题词、标题或模糊描述"
    examples:
      reject: ["做个AI视频", "量子计算科普", "科技感视频"]
      accept:
        ["场景一：介绍... 场景二：展示...", "视频内容包括：1... 2... 3..."]

  # 检查2：内容是否足够详细
  has_sufficient_detail:
    check: "是否有足够的信息来推导核心主题、受众和情感基调？"
    minimum_requirement: "至少包含核心信息点或关键内容要素"

  # 检查3：非纯风格/形式描述
  not_style_only:
    check: "输入是否不仅仅是风格、形式或视觉要求？"
    reject_if: "输入仅包含'酷炫的'、'专业的'、'极简风格'等描述"

# 验证失败处理流程
validation_failure_response:
  action: "立即停止，要求用户提供详细内容"
  message_template: |
    **我需要您提供具体的视频内容才能继续。**

    您目前只提供了主题/标题/风格偏好，但我需要详细的内容来制作专业的视频规划。

    请提供以下任一项：
    1. **完整的视频脚本/旁白文案**（逐字稿）
    2. **详细的场景大纲**（每个场景要讲什么内容）
    3. **核心内容要点**（关键信息、要点列表、预期传达的知识点）

    示例：
    - ✅ "第一场景介绍XX概念，说明... 第二场景展示..."
    - ✅ "视频要讲解光合作用，包含：1. 定义 2. 过程 3. 意义"
```

**⚠️ 重要：如果验证失败，不要继续分析，不要使用示例填充，立即停止。**

---

#### 第二步：内容分析（仅当验证通过后）

在确认用户提供了充足内容后，分析用户的输入（视频文案/主题描述），提取以下关键信息：

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
      # === 完整的模糊术语词典 ===
      vague_terms_dictionary:
        # 视觉感受类
        visual_feeling_terms:
          cool: ["科技感", "现代感", "高级感", "冷酷感"]
          elegant: ["典雅", "精致", "高贵", "优雅"]
          fun: ["有趣", "活泼", "欢乐", "趣味性"]
          creative: ["创意", "艺术", "独特", "创新"]
          professional: ["专业", "商务", "正式", "可靠"]
          modern: ["现代", "时尚", "潮流", "新颖"]
          advanced: ["先进", "高科技", "前沿", "复杂"]
          premium: ["高端", "奢华", "精品", "顶级"]
          luxury: ["豪华", "奢侈", "尊贵", "精品"]
          simple: ["简单", "简洁", "清爽", "干净"]
          clean: ["整洁", "清晰", "干净", "有条理"]

        # 情感氛围类
        emotional_atmosphere_terms:
          relaxing: ["放松", "治愈", "平静", "安宁"]
          exciting: ["刺激", "兴奋", "激动", "活力"]
          mysterious: ["神秘", "悬疑", "深邃", "未知"]
          romantic: ["浪漫", "温馨", "甜蜜", "柔情"]
          dramatic: ["戏剧性", "夸张", "强烈", "冲击"]
          epic: ["史诗", "宏大", "壮观", "震撼"]
          intimate: ["亲密", "私密", "温馨", "个人化"]
          grand: ["宏伟", "盛大", "隆重", "庄严"]
          minimal: ["极简", "简约", "克制", "留白"]

        # 质量描述类
        quality_description_terms:
          high_quality: ["高质量", "精致", "完美", "卓越"]
          polished: ["抛光", "精致", "完美", "无瑕"]
          refined: ["精炼", "优雅", "考究", "讲究"]
          rough: ["粗糙", "原始", "未加工", "自然"]
          raw: ["原始", "未处理", "真实", "直接"]
          authentic: ["真实", "正宗", "原汁原味", "地道"]
          handmade: ["手工", "手作", "手工感", "独特"]
          digital: ["数字", "数码", "电子", "科技"]
          analog: ["模拟", "复古", "传统", "经典"]

      # === 模糊术语澄清流程 ===
      clarification_workflow:
        # 步骤1：识别模糊术语
        step1_identify_term: "检测用户输入中的模糊风格术语"

        # 步骤2：多维度澄清
        step2_multi_dimension_clarification:
          visual_dimension: "询问视觉特征偏好（色彩、构图、元素）"
          emotional_dimension: "询问情感氛围偏好（轻松/严肃/兴奋等）"
          functional_dimension: "询问功能需求（清晰度/趣味性/专业性）"
          cultural_dimension: "询问文化倾向（东方/西方/传统/现代）"

        # 步骤3：提供具体选项
        step3_provide_options:
          format: "您说的'[模糊术语]'可能对应以下几种具体风格："
          options_count: "提供2-4个最相关的具体风格选项"
          option_format: "[选项名称]：[视觉特点描述] + [适用场景]"
          visual_reference: "可提供风格示例图片或描述帮助理解"

        # 步骤4：渐进细化
        step4_progressive_refinement:
          broad_to_specific: "从大类风格逐步细化到具体风格"
          multiple_rounds: "复杂术语可进行多轮澄清对话"
          preference_ranking: "让用户对选项进行偏好排序"

      # === 模糊→具体映射词典（扩展版）===
      clarification_mapping_extended:
        # cool 相关映射
        cool_mappings:
          "科技感 / 未来感" → era_style: "future" + genre_style: "cyberpunk"
          "现代感 / 简约感" → era_style: "modern" + genre_style: "minimalist"
          "高级感 / 精致感" → era_style: "modern" + genre_style: "minimalist" + visual_aesthetic: "graphic"
          "冷酷感 / 工业感" → era_style: "modern" + genre_style: "minimalist" + visual_elements: ["金属", "混凝土", "直线"]

        # elegant 相关映射
        elegant_mappings:
          "典雅中国风" → cultural_style: "chinese" + era_style: "modern" + genre_style: "minimalist"
          "简约和风" → cultural_style: "japanese" + era_style: "modern" + genre_style: "minimalist"
          "欧美优雅" → cultural_style: "western" + era_style: "modern" + genre_style: "minimalist"
          "精致奢华" → era_style: "modern" + genre_style: "minimalist" + visual_aesthetic: "cinematic"

        # fun 相关映射
        fun_mappings:
          "卡通趣味" → genre_style: "cartoon" + era_style: "modern"
          "活泼波普" → genre_style: "pop_art" + era_style: "modern"
          "游戏风格" → genre_style: "cartoon" + visual_elements: ["像素", "游戏UI", "角色"]
          "儿童趣味" → genre_style: "cartoon" + color_palette: ["鲜艳色彩", "高饱和度"]

        # creative 相关映射
        creative_mappings:
          "艺术抽象" → genre_style: "abstract" + era_style: "modern"
          "手绘创意" → genre_style: "illustrative" + visual_aesthetic: "illustrative"
          "混合媒体" → genre_style: "abstract" + visual_elements: ["拼贴", "纹理", "手绘"]
          "实验性" → genre_style: "abstract" + visual_aesthetic: "experimental"

        # professional 相关映射
        professional_mappings:
          "专业极简" → genre_style: "minimalist" + era_style: "modern" + visual_aesthetic: "graphic"
          "商务风" → genre_style: "minimalist" + visual_aesthetic: "corporate graphic"
          "科技专业" → era_style: "modern" + genre_style: "minimalist" + visual_elements: ["数据可视化", "图表", "线框"]
          "学术专业" → genre_style: "minimalist" + visual_aesthetic: "academic graphic"

        # 其他常见映射
        additional_mappings:
          "复古怀旧" → era_style: "retro" + genre_style: "vaporwave"
          "治愈放松" → cultural_style: "japanese" + era_style: "modern" + genre_style: "minimalist"
          "自然生态" → genre_style: "illustrative" + visual_elements: ["植物", "动物", "自然纹理"]
          "传统文化" → cultural_style: "chinese" + era_style: "classical" + genre_style: "illustrative"
          "未来科技" → era_style: "future" + genre_style: "cyberpunk" + visual_aesthetic: "tech"

      # === 澄清对话示例 ===
      clarification_examples:
        example1_cool_term:
          user_input: "做一个cool的科技产品介绍视频"
          clarification: "您说的'cool'具体是指：1) 科技感未来风 2) 现代简约感 3) 高级精致感 还是其他？"
          user_response: "科技感未来风"
          mapping: era_style: "future" + genre_style: "cyberpunk"

        example2_elegant_term:
          user_input: "要一个elegant的文化宣传视频"
          clarification: "您说的'elegant'具体是指：1) 典雅中国风 2) 简约和风 3) 欧美优雅风？"
          user_response: "典雅中国风"
          mapping: cultural_style: "chinese" + era_style: "modern" + genre_style: "minimalist"

        example3_professional_term:
          user_input: "做一个professional的企业介绍视频"
          clarification: "您说的'professional'具体是指：1) 专业极简风 2) 商务风格 3) 科技专业感？"
          user_response: "专业极简风"
          mapping: genre_style: "minimalist" + era_style: "modern" + visual_aesthetic: "graphic"

    # === 场景3：根据内容主题自动推荐（动态默认组合）===
    content_based_recommendation:
      # === 基于内容深度的动态默认表 ===
      dynamic_default_table:
        # 传统文化主题（根据内容深度细分）
        traditional_culture_themes:
          # 深度传统文化（哲学、经典、历史）
          传统文化深度 / 古诗词深度 / 国学经典 / 历史哲学 / 传统哲学 →
            cultural_style: "chinese"
            era_style: "classical"
            genre_style: "illustrative"
            style_rationale: "传统经典内容适合古典中国风，强调文化深度和历史感"
            confidence: "high"

          # 现代传统文化（现代诠释、文化传播）
          传统文化现代 / 水墨画现代 / 中国文化传播 / 中医科普 / 国学入门 →
            cultural_style: "chinese"
            era_style: "modern"
            genre_style: "minimalist"
            style_rationale: "现代传统文化适合现代中国风，平衡传统美学与现代设计"
            confidence: "high"

          # 趣味传统文化（轻松入门、趣味科普）
          传统文化趣味 / 古诗词入门 / 文化趣味 / 传统节日 / 民俗文化 →
            cultural_style: "chinese"
            era_style: "modern"
            genre_style: "illustrative"
            style_rationale: "趣味传统文化适合轻松活泼的插画风格，降低理解门槛"
            confidence: "medium"

        # 科技主题（根据科技类型细分）
        technology_themes:
          # 硬核科技（底层技术、复杂原理）
          硬核科技 / 编程底层 / 算法原理 / 系统架构 / 硬件技术 →
            era_style: "future"
            genre_style: "cyberpunk"
            visual_aesthetic: "tech"
            style_rationale: "硬核科技适合赛博朋克风格，强调技术复杂性和未来感"
            confidence: "high"

          # 应用科技（产品应用、用户体验）
          应用科技 / 产品介绍 / 用户体验 / 交互设计 / 软件应用 →
            era_style: "modern"
            genre_style: "minimalist"
            visual_aesthetic: "graphic"
            style_rationale: "应用科技适合现代极简风格，强调清晰性和可用性"
            confidence: "high"

          # 科普科技（大众科普、趣味解释）
          科技科普 / AI入门 / 编程入门 / 技术趣味 / 科技故事 →
            era_style: "modern"
            genre_style: "illustrative"
            visual_aesthetic: "graphic"
            style_rationale: "科技科普适合插画风格，用视觉隐喻解释复杂概念"
            confidence: "high"

        # 教育主题（根据教育类型细分）
        education_themes:
          # 正式教育（课程教学、学术内容）
          正式教育 / 课程教学 / 学术内容 / 专业知识 / 技能培训 →
            era_style: "modern"
            genre_style: "minimalist"
            visual_aesthetic: "graphic"
            style_rationale: "正式教育适合极简图形风格，确保信息清晰和专注"
            confidence: "high"

          # 趣味教育（趣味学习、游戏化）
          趣味教育 / 游戏化学习 / 儿童教育 / 兴趣学习 / 轻松教学 →
            era_style: "modern"
            genre_style: "cartoon"
            visual_aesthetic: "illustrative"
            style_rationale: "趣味教育适合卡通风格，增加学习趣味性和参与度"
            confidence: "high"

          # 深度教育（专业培训、高级课程）
          深度教育 / 专业培训 / 高级课程 / 认证培训 / 专业发展 →
            era_style: "modern"
            genre_style: "minimalist"
            visual_aesthetic: "corporate graphic"
            style_rationale: "深度教育适合专业商务风格，体现权威性和专业性"
            confidence: "medium"

        # 治愈放松主题（根据放松类型细分）
        relaxation_themes:
          # 深度放松（冥想、正念、心理治疗）
          深度放松 / 冥想指导 / 正念练习 / 心理治疗 / 深度疗愈 →
            cultural_style: "japanese"
            era_style: "modern"
            genre_style: "minimalist"
            style_rationale: "深度放松适合和风极简，创造宁静专注的氛围"
            confidence: "high"

          # 自然放松（大自然、生态、户外）
          自然放松 / 大自然声音 / 生态疗愈 / 户外体验 / 自然美学 →
            genre_style: "illustrative"
            visual_aesthetic: "nature graphic"
            style_rationale: "自然放松适合自然插画风格，连接人与自然"
            confidence: "high"

          # 趣味放松（轻松娱乐、休闲趣味）
          趣味放松 / 轻松娱乐 / 休闲趣味 / 治愈动画 / 轻松内容 →
            genre_style: "cartoon"
            era_style: "modern"
            style_rationale: "趣味放松适合卡通风格，创造轻松愉快的氛围"
            confidence: "medium"

        # 商业主题（根据商业类型细分）
        business_themes:
          # 企业专业（公司介绍、年度报告）
          企业专业 / 公司介绍 / 年度报告 / 企业宣传 / 品牌形象 →
            era_style: "modern"
            genre_style: "minimalist"
            visual_aesthetic: "corporate graphic"
            style_rationale: "企业专业内容适合商务极简风格，体现专业性和可信度"
            confidence: "high"

          # 产品营销（产品推广、市场营销）
          产品营销 / 产品推广 / 市场营销 / 广告宣传 / 销售材料 →
            era_style: "modern"
            genre_style: "minimalist"
            visual_aesthetic: "commercial graphic"
            style_rationale: "产品营销适合商业图形风格，平衡专业性和吸引力"
            confidence: "high"

          # 创业创新（初创公司、创新项目）
          创业创新 / 初创公司 / 创新项目 / 创投宣传 / 创业故事 →
            era_style: "modern"
            genre_style: "minimalist"
            visual_aesthetic: "startup graphic"
            style_rationale: "创业创新适合现代简约风格，体现创新精神和活力"
            confidence: "medium"

      # === 用户偏好调整机制 ===
      user_preference_adjustment:
        # 调整维度
        adjustment_dimensions:
          - "时代偏好调整：classical ↔ modern ↔ future"
          - "复杂程度调整：minimalist ↔ detailed ↔ complex"
          - "情感强度调整：calm ↔ moderate ↔ intense"
          - "文化倾向调整：eastern ↔ western ↔ global"

        # 调整方法
        adjustment_methods:
          slider_adjustment: "提供滑动条调整风格参数强度"
          preference_ranking: "让用户对推荐风格进行偏好排序"
          alternative_options: "提供主要推荐和替代选项"
          custom_mix: "支持自定义混合风格组合"

        # 调整示例
        adjustment_example:
          default_recommendation: "chinese + modern + minimalist"
          user_preference: "希望更传统一些"
          adjusted_recommendation: "chinese + classical + illustrative"
          rationale: "根据用户偏好，从现代简约调整为古典插画风格"

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

      # === 详细的置信度计算方法 ===
      calculation_method:
        # 权重分配（总和为1.0）
        weights:
          keyword_match: 0.40  # 40% - 用户明确性最重要
          content_relevance: 0.25  # 25% - 内容匹配度次重要
          emotion_alignment: 0.20  # 20% - 情感一致性重要
          video_type_fit: 0.15  # 15% - 视频类型适配度

        # 评分标准
        scoring_criteria:
          keyword_match:
            exact_match: "用户输入包含完整的预定义风格关键词（如'中国风视频'） → 100%"
            partial_match: "用户输入包含相关关键词（如'中国传统文化'） → 70%"
            no_match: "用户输入未提及任何风格关键词 → 0%"
            vague_term: "用户使用了模糊术语（如'酷炫的'） → 需要澄清后重新评分"

          content_relevance:
            strong_relevance: "风格与内容主题高度相关（如'中医'→'中国风'） → 80-100%"
            moderate_relevance: "风格与内容主题有一定关联 → 50-80%"
            weak_relevance: "风格与内容主题关联较弱 → 20-50%"
            irrelevant: "风格与内容主题不相关 → 0-20%"

          emotion_alignment:
            perfect_alignment: "风格情感与内容基调完美匹配（如'治愈'→'和风'） → 80-100%"
            good_alignment: "风格情感与内容基调良好匹配 → 60-80%"
            neutral_alignment: "风格情感中性，无明显冲突 → 40-60%"
            conflicting_alignment: "风格情感与内容基调冲突（如'悬疑'→'卡通'） → 0-40%"

          video_type_fit:
            optimal_fit: "风格与视频类型完美适配（如'教育视频'→'极简'） → 80-100%"
            good_fit: "风格与视频类型良好适配 → 60-80%"
            acceptable_fit: "风格与视频类型可接受 → 40-60%"
            poor_fit: "风格与视频类型适配度差（如'纪录片'→'蒸汽波'） → 0-40%"

        # 计算公式
        calculation_formula: |
          总置信度 = (keyword_match_score × 0.40)
                   + (content_relevance_score × 0.25)
                   + (emotion_alignment_score × 0.20)
                   + (video_type_fit_score × 0.15)

        # 计算示例
        example_calculation: |
          场景：用户输入"做一个关于量子计算的科普视频"，未指定风格

          1. keyword_match_score: 0% (未提及风格关键词)
          2. content_relevance_score: 90% (量子计算→赛博朋克，强相关)
          3. emotion_alignment_score: 85% (科普→专业感，良好匹配)
          4. video_type_fit_score: 80% (科普视频→极简/科技风格，良好适配)

          总置信度 = (0 × 0.40) + (90 × 0.25) + (85 × 0.20) + (80 × 0.15)
                  = 0 + 22.5 + 17 + 12 = 51.5%

          结果：中等置信度(51.5%)，提供推荐选项让用户选择

      decision_rules:
        high_confidence: "总置信度 > 80% → 自动应用推荐风格，询问用户确认"
        medium_confidence: "总置信度 50-80% → 提供2-3个推荐选项，让用户选择"
        low_confidence: "总置信度 < 50% → 必须停止，请求用户明确指定风格"

      minimum_confidence_threshold: "50%（低于此值必须停止并要求用户确认）"

      # 特殊情况处理
      special_cases:
        multiple_styles: "当多个风格置信度相近时（差异<10%），全部展示给用户选择"
        tie_breaker: "置信度相同时，优先选择：content_relevance > emotion_alignment > video_type_fit"
        insufficient_data: "当缺乏足够信息计算置信度时，默认视为低置信度(<50%)"

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
      # === 冲突检测矩阵 ===
      conflict_detection_matrix:
        # 文化-时代冲突
        cultural_era_conflicts:
          - "chinese + future" (中国传统美学与未来科技冲突)
          - "arabic + steampunk" (阿拉伯文化与蒸汽朋克冲突)
          - "african + retro" (非洲文化与90年代复古冲突)
          - "latino + classical" (拉丁美洲文化与古典欧洲冲突)

        # 文化-流派冲突
        cultural_genre_conflicts:
          - "japanese + cyberpunk" (和风禅意与赛博朋克冲突)
          - "korean + vaporwave" (韩风温柔与蒸汽波冲突)
          - "western + traditional_chinese" (欧美写实与中国传统冲突)
          - "arabic + pop_art" (阿拉伯几何与波普艺术冲突)

        # 时代-流派冲突
        era_genre_conflicts:
          - "classical + cartoon" (古典庄严与卡通趣味冲突)
          - "future + pop_art" (未来科技与波普怀旧冲突)
          - "retro + hyper_realistic" (复古质感与超写实冲突)
          - "steampunk + minimalist" (蒸汽朋克复杂与极简冲突)

        # 流派-内容冲突
        genre_content_conflicts:
          - "abstract + tutorial" (抽象艺术与教程清晰性冲突)
          - "cartoon + professional" (卡通趣味与专业严肃冲突)
          - "vaporwave + educational" (蒸汽波迷幻与教育严谨冲突)
          - "pop_art + documentary" (波普夸张与纪录片真实冲突)

      # === 冲突严重程度分级 ===
      conflict_severity:
        critical_conflicts: "根本性不兼容，必须解决（如chinese + cyberpunk）"
        major_conflicts: "严重不协调，强烈建议调整（如classical + vaporwave）"
        moderate_conflicts: "中等不协调，可调整或解释（如japanese + modern）"
        minor_conflicts: "轻微不协调，可通过设计调和（如minimalist + detailed）"

      # === 完整的冲突解决流程 ===
      resolution_workflow:
        # 步骤1：检测冲突
        step1_detect_conflict: "扫描style_definition中的不合理组合"

        # 步骤2：分析冲突
        step2_analyze_conflict:
          identify_conflict_type: "确定冲突类型（文化-时代、文化-流派等）"
          assess_severity: "评估冲突严重程度（critical/major/moderate/minor）"
          analyze_root_cause: "分析冲突根本原因（美学冲突、情感冲突、功能冲突）"

        # 步骤3：生成解决方案
        step3_generate_solutions:
          # 基于冲突类型提供具体方案
          cultural_era_conflict_solutions:
            - "替换冲突的时代风格：chinese + future → chinese + modern"
            - "替换冲突的文化风格：chinese + future → western + future"
            - "创建混合风格：tech-chinese (传统元素+科技感)"

          cultural_genre_conflict_solutions:
            - "调整流派强度：japanese + cyberpunk → japanese + minimalist with tech accents"
            - "重新定义组合：将冲突视为创新机会，设计新风格"
            - "分层应用：文化风格用于主视觉，流派风格用于特效"

          era_genre_conflict_solutions:
            - "时代主导：classical + cartoon → classical + illustrative"
            - "流派主导：classical + cartoon → modern + cartoon"
            - "混合平衡：找到时代与流派的平衡点"

          genre_content_conflict_solutions:
            - "内容优先：abstract + tutorial → graphic + tutorial"
            - "风格适应：cartoon + professional → minimalist with playful accents"
            - "分段应用：不同内容部分使用不同风格"

        # 步骤4：用户交互
        step4_user_interaction:
          presentation_format: |
            检测到风格冲突：[冲突描述]
            冲突类型：[冲突类型]
            严重程度：[严重程度]

            推荐解决方案：
            1. [方案A] - [优点/缺点]
            2. [方案B] - [优点/缺点]
            3. [方案C] - [优点/缺点]

            请选择您偏好的解决方案，或提出其他要求。

          user_decision_options:
            - "接受推荐方案X"
            - "提供替代方案（请具体说明）"
            - "坚持原风格组合（需提供艺术合理性说明）"
            - "请求更多选项"

        # 步骤5：实施和验证
        step5_implement_and_verify:
          apply_solution: "应用用户选择的解决方案"
          verify_compatibility: "验证新组合的合理性"
          update_style_definition: "更新style_definition反映解决方案"
          document_decision: "在style_rationale中记录冲突解决过程"

      # === 冲突解决原则 ===
      resolution_principles:
        content_first: "内容主题优先于风格偏好"
        user_intent: "尊重用户原始意图，寻找最优实现方式"
        aesthetic_coherence: "确保视觉美学的一致性"
        functional_appropriateness: "风格必须服务于内容功能"
        creative_innovation: "将冲突视为创新机会而非问题"

      # === 冲突解决示例 ===
      resolution_examples:
        example1_chinese_cyberpunk:
          conflict: "chinese + cyberpunk (传统vs未来)"
          analysis: "根本性美学冲突：水墨意境与霓虹科技的对比"
          solutions:
            - "方案A：保留chinese，改为minimalist (chinese + modern + minimalist)"
            - "方案B：保留cyberpunk，改为western (western + future + cyberpunk)"
            - "方案C：创建混合风格tech-chinese (现代中国风+科技元素)"
          recommended: "方案C（创新平衡）"

        example2_abstract_tutorial:
          conflict: "abstract + tutorial (抽象vs教程)"
          analysis: "功能冲突：抽象艺术影响教程的清晰性"
          solutions:
            - "方案A：改用graphic风格保证清晰性 (modern + graphic)"
            - "方案B：分段应用：理论部分用abstract，操作部分用graphic"
            - "方案C：抽象元素作为背景，清晰图形作为前景"
          recommended: "方案C（分层应用）"

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

  # 对抗式验证（强制 v6.0+）
  adversarial_validation:
    - [ ] 已执行验证（参照 validation-checklist.yaml 和 validation-report-template.yaml）
```

---

## 输出交付

完成所有决策并生成 plan.yaml 后，**必须执行对抗式验证**（参照 [validation-checklist.yaml](../validation-checklist.yaml) 和 [validation-report-template.yaml](../validation-report-template.yaml)）。

交付物：
- `plan.yaml` - 创意方案
- `validation-report.yaml` - 验证报告

---
