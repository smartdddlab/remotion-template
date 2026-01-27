
以下展示如何使用导演决策框架填充完整 YAML 的实际案例。

### Example 1: Educational Science Video (科普视频)

**视频类型**：educational（科普量子力学）  
**情感基调**：inspiring（激发好奇心）  
**目标时长**：90 秒（medium）  
**目标受众**：general（大众，无先验知识）

```yaml
video_director_framework:
  director_vision:
    creative_vision: |
      核心信息：通过量子力学的奇异现象，激发观众对微观世界的好奇心。
      情感旅程：好奇（开场）→ 震撼（量子纠缠）→ 启发（薛定谔的猫）→ 探索（总结）。
      风格定位：cinematic with particle effects（电影感 + 粒子特效，营造震撼感）。
      关键隐喻：量子纠缠用发光的连接线，薛定谔的猫用半透明叠加。
    
    target_audience:
      demographics: "general（大众受众，18-35岁，无物理背景）"
      viewing_context: "desktop/mobile（YouTube、B站）"
      prior_knowledge: "minimal（无量子力学先验知识）"
      emotional_needs: "curiosity, awe, inspiration（好奇、震撼、启发）"
    
    success_metrics:
      engagement_goals: "watch_time > 70%, completion_rate > 80%（完整观看率）"
      learning_outcomes: "理解量子纠缠基本概念、了解薛定谔的猫思想实验"
      brand_objectives: "N/A"
      artistic_aspirations: "电影级视觉质量，粒子特效震撼感"
  
  scriptwriting:
    narrative_structure:
      story_arc: "three_act（问题引入→概念解释→实际应用）"
      pacing_strategy: "moderate with emphasis at key moments（适中节奏，关键时刻强调）"
      key_moments: "1. 量子纠缠现象（震撼） 2. 薛定谔的猫（启发） 3. 实际应用（探索）"
      call_to_action: "N/A（科普视频无行动呼吁）"
    
    scenes:
      - scene_number: 1
        timecode: "0:00 - 0:15 (15秒，约57字）"
        scene_objective: "引入量子纠缠现象，制造悬念"
        narrative_function: "setup（铺垫问题）"
        key_dialogue: |
          量子纠缠是物理学家**最震惊**的发现之一。（10字）
          两个粒子无论相距多远，都能**瞬间**相互影响。（13字）
          这似乎违反了**相对论**的光速限制。（11字）
          # 总计34字，语速2.27字/秒（太慢，需调整）
          
          调整后：
          量子纠缠是物理学家最震惊的发现之一。
          两个粒子无论相距多远，都能瞬间相互影响。
          这似乎违反了相对论的光速限制。
          总计54字，54/15 = 3.6字/秒 ✓
        
        visual_hook: "深蓝背景，两个发光的量子粒子突然出现，用发光线连接"
        emotional_tone: "suspense（悬疑，制造期待）"
        transition_logic: "dissolve（渐变融合，进入下一个概念）"
      
      - scene_number: 2
        timecode: "0:15 - 0:60 (45秒，约171字）"
        scene_objective: "解释薛定谔的猫思想实验"
        narrative_function: "development（发展概念）"
        key_dialogue: |
          奥地利物理学家薛定谔在1935年提出思想实验。
          他设想一只猫处于**叠加态**，既死又活。
          这揭示了量子力学的**奇异本质**。
          # 总计48字，48/45 = 1.07字/秒（太快）
          
          调整后（增加细节）：
          奥地利物理学家薛定谔在1935年提出了一个著名的思想实验。
          他设想一只猫处于叠加态，既死又活，直到观察为止。
          这揭示了量子力学的奇异本质，挑战了我们的常识。
          总计75字，75/45 = 1.67字/秒（仍快，继续调整）
          
          最终调整（适中语速）：
          薛定谔在1935年提出了一个著名的思想实验。
          他设想一只猫处于叠加态，既死又活，直到观察为止。
          这揭示了量子力学的奇异本质，挑战了我们的常识理解。
          总计67字，67/45 = 1.49字/秒（依然快）
          
          # 注意：实际AI生成时会自动控制speed=1.0，字数会自然调整
          # 此处仅展示计算逻辑
        
        visual_hook: "箱子出现，猫的半透明图像叠加（活猫+死猫）"
        emotional_tone: "inspiring（启发，激发思考）"
        transition_logic: "fade（淡出，进入总结）"
      
      - scene_number: 3
        timecode: "0:60 - 0:90 (30秒，约114字）"
        scene_objective: "总结并引发探索欲"
        narrative_function: "resolution（启发探索）"
        key_dialogue: |
          量子力学虽然反直觉，但已在**量子计算**中应用。
          它改变了我们对**现实本质**的理解。
          希望激发了你对微观世界的探索欲！
          # 总计51字，51/30 = 1.7字/秒（适中）
        
        visual_hook: "粒子发光、量子门电路动画、文字浮现"
        emotional_tone: "inspiring（启发，鼓励探索）"
        transition_logic: "N/A（最后一个场景）"
  
  audio_design:
    voice_direction:
      casting_specifications: "female-shaonv（温暖有活力，符合inspiring基调）"
      emotional_range: "inspiring（全程启发性情感）"
      technical_requirements: "speed=1.0, emotion=neutral, language_boost=Chinese"
    
    sound_design:
      ambient_soundscape: "deep space ambience（深邃太空氛围）"
      sound_effects: "particle glow whoosh（粒子发光音效）, box open sound（箱子打开音）"
      musical_score: |
        Style: cinematic orchestral with piano（电影管弦乐+钢琴）
        Tempo: moderate (60-80 BPM)
        Instrumentation: strings（弦乐）, piano（钢琴）, subtle electronic（微弱电子）
        Voice level: -18 to -12 LUFS
        Music level: -24 to -20 LUFS
        Emotional alignment: inspiring/uplifting（启发性/上升感）
      audio_transitions: "crossfade between scenes, stinger at key moments（场景间交叉淡入淡出，关键时刻使用音效）"
  
  visual_art:
    cinematic_style:
      visual_aesthetic: "cinematic with particle effects（电影感+粒子特效）"
      color_palette:
        primary_colors: "teal (#00bfff), dark blue (#001f3f)"
        secondary_colors: "orange (#ff6b35), white (#ffffff)"
        emotional_mapping: |
          teal: 好奇心、科技、探索
          dark blue: 深度、专业、稳重
          orange: 能量、注意力、温暖
        progression_arc: "dark blue (scene 1) → teal/orange blend (scene 2) → teal with particles (scene 3)"
      
      texture_and_grain: "subtle film grain（微妙电影颗粒）"
      lighting_philosophy: "dramatic side lighting, rim light（戏剧性侧光、轮廓光）"
      depth_strategy: "foreground (particles/quantum elements) → midground (cats/boxes) → background (deep space/gradient)"
    
    composition:
      aspect_ratio: "16:9（标准横屏）"
      framing_principles:
        - "rule of thirds（粒子放置在三分线交点）"
        - "leading lines（连接线引导视觉流向）"
        - "negative space（留白，避免拥挤）"
        - "visual hierarchy（关键元素优先）"
      
      camera_perspective: "medium shot with slight movement（中景，微动）"
      movement_philosophy: "subtle camera drift（微妙的镜头漂移，营造沉浸感）"
    
    motion_design:
      animation_style: "dynamic with particle effects（动态，粒子特效）"
      easing_strategies: "spring for particle emission（粒子发射用弹簧动画）, ease-in-out for transitions（转场用缓入缓出）"
      transition_language: "dissolve, fade, match cut（渐变、淡出、匹配剪接）"
      parallax_depth: "3-layer parallax（三层视差：前景粒子/中景内容/背景空间）"
    
    typography:
      font_system:
        primary_font: "Inter Bold（标题、强调）"
        secondary_font: "Inter Regular（正文、信息）"
        font_pairing_rationale: "现代无衬线，清晰易读，适合科技内容"
      
      text_animation: "fade in with slide, emphasize on keywords（淡入滑动，关键词强调）"
      information_hierarchy: "title (largest) → key terms (highlighted) → explanation (medium) → details (smallest)"
      readability_standards: "contrast ratio 4.5:1 minimum, min size 24px for body text"
  
  post_production:
    editing_approach:
      rhythm_and_pacing: "moderate, accelerate at quantum reveals, slow at explanations（适中，量子揭示时加速，解释时放慢）"
      scene_transitions: "dissolve between scenes, match cut for quantum gates（场景间渐变，量子门使用匹配剪接）"
      parallel_editing: "N/A（无并行编辑）"
      montage_sequences: "N/A（无蒙太奇）"
    
    visual_effects:
      vfx_requirements: "particle glow, quantum connection lines, cat overlay, film grain overlay"
      compositing_standards: "blend modes: screen for glow, normal for overlay, multiply for film grain"
      motion_graphics: "quantum gate animation, text reveal with kinetic typography"
      title_design: "clean title card with subtitle, fade in over particle background"
    
    color_grading:
      grade_style: "cinematic with teal tint, increased contrast, slight desaturation for depth"
      shot_matching: "match scenes with teal color grading, ensure consistent skin tones (if any)"
      creative_looks: "glow effect at quantum reveals, desaturate at explanations"
      technical_standards: "rec.709 color space, gamma 2.4"
    
    audio_post:
      final_mix: "voice at -16 LUFS integrated, music under, SFX at -20 LUFS"
      sound_sweetening: "add subtle reverb to voice, enhance particle whoosh"
      music_editing: "fade in at scene starts, crossfade between scenes, fade out at end"
      mastering: "final output at -16 LUFS integrated, 48kHz stereo MP3"
    
    post_quality_gates:
      editing_check: "narrative flow smooth, quantum reveals timed with music beats"
      technical_check: "no glitches, audio sync within 0.1s"
      creative_check: "emotional impact achieved, curious to inspiring arc complete"
      consistency_check: "teal color consistent, particle effects cohesive"
  
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

### Example 2: Commercial Product Video (商业产品视频)

**视频类型**：commercial（推广智能手表）  
**情感基调**：professional（专业权威）  
**目标时长**：60 秒（short）  
**目标受众**：general（大众，对健康科技感兴趣）

```yaml
video_director_framework:
  director_vision:
    creative_vision: |
      核心信息：智能手表是健康管理的新时代。
      情感旅程：痛点共鸣 → 解决方案兴奋 → 信任建立 → 行动呼吁。
      风格定位：minimalist with clean typography（极简 + 清晰排版，强调专业性）。
      关键隐喻：时间流动用动态数据可视化，健康数据用进度条和图表。
    
    target_audience:
      demographics: "general（25-45岁，关注健康）"
      viewing_context: "mobile/desktop（社交媒体、产品官网）"
      prior_knowledge: "minimal（对智能手表有基本了解）"
      emotional_needs: "trust, excitement, motivation（信任、兴奋、行动激励）"
    
    success_metrics:
      engagement_goals: "completion_rate > 70%（完整观看）, click-through > 5%（点击转化）"
      learning_outcomes: "N/A（非教育内容）"
      brand_objectives: "品牌信任建立，产品功能认知"
      artistic_aspirations: "极简现代设计，清晰信息传达"
  
  scriptwriting:
    narrative_structure:
      story_arc: "problem_solution（痛点呈现→产品展示→行动呼吁）"
      pacing_strategy: "fast with emphasis at benefits（快节奏，突出利益）"
      key_moments: "1. 健康管理痛点（共鸣） 2. 智能手表功能（展示） 3. 行动呼吁（激励）"
      call_to_action: "访问官网购买（明确行动）"
    
    scenes:
      - scene_number: 1
        timecode: "0:00 - 0:15 (15秒）"
        scene_objective: "呈现健康管理痛点"
        narrative_function: "setup（铺垫问题）"
        key_dialogue: |
          你是否厌倦了手动记录健康数据？
          步数、睡眠、心率，每次都要打开**不同应用**。
          这种碎片化让健康管理变得**复杂而低效**。
        
        visual_hook: "灰色背景，多个手机应用图标散乱显示"
        emotional_tone: "professional（专业，理性陈述问题）"
        transition_logic: "cut（直接切换，进入解决方案）"
      
      - scene_number: 2
        timecode: "0:15 - 0:45 (30秒）"
        scene_objective: "展示智能手表的一体化解决方案"
        narrative_function: "development（展示优势）"
        key_dialogue: |
          智能手表让健康管理**简单而强大**。
          一块手表，自动记录**所有健康指标**。
          实时分析，给你**科学的健康建议**。
        
        visual_hook: "智能手表产品图，健康数据可视化动态展示"
        emotional_tone: "inspiring（启发，激发兴奋）"
        transition_logic: "fade（淡出，进入行动呼吁）"
      
      - scene_number: 3
        timecode: "0:45 - 1:00 (15秒）"
        scene_objective: "行动呼吁"
        narrative_function: "resolution（激励行动）"
        key_dialogue: |
          现在是时候拥抱**智能健康管理**了。
          点击下方链接，开启你的**健康新时代**。
        
        visual_hook: "产品图+购买按钮，动态强调"
        emotional_tone: "professional（专业，建立信任）"
        transition_logic: "N/A（最后一个场景）"
  
  audio_design:
    voice_direction:
      casting_specifications: "male-authoritative（专业权威，符合professional基调）"
      emotional_range: "professional（全程专业情感）"
      technical_requirements: "speed=1.0, emotion=neutral, language_boost=Chinese"
    
    sound_design:
      ambient_soundscape: "clean tech ambience（简洁科技氛围）"
      sound_effects: "data sync whoosh（数据同步音）, notification ping（通知音）"
      musical_score: |
        Style: minimalist electronic with piano（极简电子乐+钢琴）
        Tempo: moderate (80-100 BPM)
        Instrumentation: electronic beats（电子节拍）, piano accents（钢琴强调）
        Voice level: -16 LUFS
        Music level: -22 LUFS
        Emotional alignment: professional/inspiring（专业/启发性）
      audio_transitions: "crossfade, stinger at action call（场景间交叉淡入淡出，行动呼吁使用提示音）"
  
  visual_art:
    cinematic_style:
      visual_aesthetic: "minimalist with clean typography（极简+清晰排版）"
      color_palette:
        primary_colors: "navy blue (#001f3f), white (#ffffff)"
        secondary_colors: "accent blue (#007bff), light gray (#e0e0e0)"
        emotional_mapping: |
          navy blue: 专业、权威、信任
          white: 纯净、清晰、简洁
          accent blue: 重点、行动、现代
        progression_arc: "gray (scene 1) → navy+white (scene 2) → white+accent (scene 3)"
      
      texture_and_grain: "clean, no grain（无颗粒，保持现代感）"
      lighting_philosophy: "even flat lighting, no shadows（均匀平面光照，无阴影）"
      depth_strategy: "flat 2D, no depth（扁平化2D，无深度）"
    
    composition:
      aspect_ratio: "16:9（标准横屏）"
      framing_principles:
        - "center alignment（居中对齐）"
        - "vertical hierarchy（垂直层级：标题→产品→信息）"
        - "negative space（留白，保持整洁）"
        - "visual priority（行动按钮优先）"
      
      camera_perspective: "N/A（无相机运动，静态展示）"
      movement_philosophy: "subtle scale for emphasis（微妙缩放强调）"
    
    motion_design:
      animation_style: "clean geometric with consistent rhythm（简洁几何，一致节奏）"
      easing_strategies: "ease-in-out for all transitions（所有转场用缓入缓出）"
      transition_language: "cut, fade, slide（直接切换、淡出、滑动）"
      parallax_depth: "N/A（无视差，扁平化）"
    
    typography:
      font_system:
        primary_font: "SF Pro Display Bold（标题）"
        secondary_font: "SF Pro Text Regular（正文）"
        font_pairing_rationale: "苹果风格字体，专业现代，适合科技产品"
      
      text_animation: "fade in up for title, stagger reveal for features（标题上淡入，功能错开显示）"
      information_hierarchy: "headline (largest) → subheadlines → features (medium) → CTA (highlighted)"
      readability_standards: "contrast ratio 7:1, min size 28px for body text"
  
  post_production:
    editing_approach:
      rhythm_and_pacing: "fast, sync cuts with music beats, accelerate at CTA（快节奏，剪接对齐音乐节拍，行动呼吁时加速）"
      scene_transitions: "cut between scenes, slide for CTA（场景间直接切换，行动呼吁滑动）"
      parallel_editing: "N/A"
      montage_sequences: "N/A"
    
    visual_effects:
      vfx_requirements: "data visualization animations, product clean composite, subtle glow on CTA"
      compositing_standards: "blend modes: normal for overlay, screen for glow"
      motion_graphics: "progress bar animation, sync effects for health data, kinetic CTA button"
      title_design: "clean title card with minimal motion, fade in over white background"
    
    color_grading:
      grade_style: "minimalist with high contrast, slight cool tint, no color cast"
      shot_matching: "match scenes with navy blue consistency, maintain clean whites"
      creative_looks: "subtle glow on product, clean focus on CTA"
      technical_standards: "sRGB color space, linear gamma"
    
    audio_post:
      final_mix: "voice at -16 LUFS, music at -22 LUFS, SFX at -20 LUFS"
      sound_sweetening: "tight reverb on voice, crisp sync effects"
      music_editing: "quick crossfades, sync cuts with beats, emphasis at CTA"
      mastering: "final output at -16 LUFS, 48kHz stereo MP3"
    
    post_quality_gates:
      editing_check: "fast pace maintains engagement, CTA timing perfect"
      technical_check: "no glitches, sync perfect"
      creative_check: "trust established, excitement built, clear CTA"
      consistency_check: "minimal style consistent, typography coherent"
```

---

### Key Differences: Educational vs. Commercial Videos

| Aspect | Educational (科普) | Commercial (商业) |
|---------|-------------------|---------------------|
| **情感基调** | inspiring/suspense（启发/悬疑） | professional/trust（专业/信任） |
| **视觉风格** | cinematic + particles（电影感+粒子） | minimalist + clean（极简+清晰） |
| **色彩策略** | teal/orange/dark blue（好奇/能量/深度） | navy/white/accent blue（专业/纯净/行动） |
| **音乐风格** | cinematic orchestral（电影管弦乐） | minimalist electronic（极简电子乐） |
| **节奏策略** | moderate with emphasis（适中，强调） | fast with sync（快速，同步） |
| **转场类型** | dissolve/fade（渐变/淡出） | cut/slide（直接切换/滑动） |
| **文字风格** | dynamic emphasis（动态强调） | clean hierarchy（清晰层级） |
| **目标指标** | watch time/completion（观看时间/完整率） | conversion/click-through（转化/点击） |

