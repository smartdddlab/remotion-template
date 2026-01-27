# Video Style Framework
# 视频风格框架 - 扩展video-director以支持文化、时代、流派风格

---

## 🎯 风格分类体系

视频风格是一个**多维度**概念，包含三个独立维度：

### 维度1：文化风格 (Cultural Styles)
**定义**：基于地域文化传统的视觉语言特征

| 风格名称 | 特征描述 | 典型元素 | 色彩倾向 | 字体建议 |
|---------|---------|---------|---------|---------|
| **中国风 (Chinese)** | 传统文化美学、水墨意境、祥瑞纹样 | 山水、龙凤、祥云、牡丹、竹、水墨笔触、书法线条 | 红金、水墨黑白、青绿、暖黄 | 衬线中文书法体（方正舒体、汉仪行楷） |
| **和风 (Japanese)** | 极简禅意、自然主义、浮世绘美学 | 樱花、波浪纹、浮世绘线条、几何图案、和风配色 | 粉白、蓝绿、红金、大地色 | 明朝体、圆角黑体 |
| **韩风 (Korean)** | 温柔典雅、现代融合、简洁几何 | 传统纹样、曲线、柔和渐变、现代极简 | 粉彩、白金、大地色 | 现代无衬线+细线 |
| **欧美风 (Western)** | 写实主义、大胆对比、摄影美学 | 摄影质感、几何构图、高对比度、电影调色 | 互补色、高饱和度 | 无衬线体（Helvetica, Roboto） |
| **阿拉伯风 (Arabic)** | 几何纹样、金箔装饰、书法艺术 | 几何图案、阿拉伯书法、拱门、星形、金箔装饰 | 蓝金、绿银、红铜 | 阿拉伯书法体 |
| **非洲风 (African)** | 大地色彩、部落纹样、手工艺感 | 部落图案、木刻纹理、自然元素、大地色块 | 赭石、橙黄、深绿、黑 | 手写风格 |
| **拉丁美洲风 (Latino)** | 鲜艳色彩、马赛克、民间艺术 | 马赛克、民间图案、植物纹理、明亮对比 | 鲜艳红黄、蓝绿、紫 | 手绘风格 |

### 维度2：时代风格 (Era Styles)
**定义**：基于历史时期的视觉审美特征

| 风格名称 | 特征描述 | 典型元素 | 色彩倾向 | 字体建议 |
|---------|---------|---------|---------|---------|
| **古典 (Classical)** | 传统美学、对称构图、精致细节 | 雕刻、古典建筑、油画质感、衬线装饰 | 深红、金、棕、黑 | 衬线体（Times New Roman, 宋体） |
| **现代 (Modern)** | 功能主义、几何简洁、工业化 | 几何形状、网格系统、无衬线字体 | 白灰黑+单色强调 | 无衬线体（Helvetica, 思源黑体） |
| **未来 (Future)** | 科技感、抽象几何、霓虹光影 | 线框、全息、粒子、渐变、玻璃态 | 霓虹色、赛博蓝紫、金属银 | 未来感无衬线体 |
| **复古 (Retro)** | 怀旧美学、怀旧质感、复古配乐 | 胶片颗粒、复古滤镜、老物件、唱片机 | 复古棕、暖黄、褪色蓝 | 复古衬线体 |
| **蒸汽朋克 (Steampunk)** | 维多利亚机械、黄铜齿轮、蒸汽美学 | 齿轮、蒸汽、黄铜、皮革、机械结构 | 棕黄、铜色、灰、深红 | 机械风格衬线体 |

### 维度3：流派风格 (Genre Styles)
**定义**：基于艺术流派的视觉表达特征

| 风格名称 | 特征描述 | 典型元素 | 色彩倾向 | 字体建议 |
|---------|---------|---------|---------|---------|
| **极简 (Minimalist)** | 大量留白、简化元素、单一焦点 | 几何形状、纯色块、极简图标 | 单色+1-2强调色 | 细线无衬线体 |
| **赛博朋克 (Cyberpunk)** | 高科技低生活、霓虹对比、反乌托邦 | 霓虹灯、全息投影、机械义肢、雨夜城市 | 霓虹粉、青、紫、深黑 | 科技感字体 |
| **蒸汽波 (Vaporwave)** | 90年代怀旧、数字故障、希腊雕像 | 故障艺术、希腊雕塑、Windows95界面、粉紫渐变 | 粉紫、蓝绿、橙 | 复古像素字体 |
| **波普 (Pop Art)** | 大众文化、波点、重复图案 | 波点、漫画线框、重复元素、名人肖像 | 高饱和对比色（红蓝黄） | 粗体无衬线 |
| **抽象表现主义 (Abstract)** | 情感表达、非具象、色彩碰撞 | 泼墨、色块、线条、抽象形态 | 高对比度、互补色 | 手写风格 |
| **超写实 (Hyper-realistic)** | 照片级细节、真实质感、精确光照 | 真实材质、高细节渲染、摄影质感 | 自然色彩 | 精细无衬线 |
| **卡通/手绘 (Cartoon)** | 夸张表现、粗线条、鲜艳色彩 | 粗轮廓线、夸张表情、扁平色块 | 高饱和度 | 卡通字体 |

### 维度4：技术风格 (Technical Styles) - 现有
**定义**：基于视觉表现技术风格的分类

| 风格名称 | 特征描述 |
|---------|---------|
| **cinematic** | 电影感，深景深、动态照明、电影调色 |
| **graphic** | 图形化，高对比度、清晰图标、扁平化 |
| **illustrative** | 插画式，手绘风格、温暖色调、有机形态 |
| **flat** | 扁平化，无阴影、纯色块、简洁几何 |
| **minimalist** | 极简主义，大量留白、精确排版、有限色彩 |
| **tech** | 科技感，霓虹、线条、粒子、数据可视化 |
| **hyper-realistic** | 超写实，照片级质量、真实纹理、精确光照 |

---

## 🔄 风格映射系统

### 映射规则（Style → Visual Elements）

#### 中国风 (Chinese) 映射
```yaml
chinese_style_mapping:
  visual_aesthetic: "cinematic with illustrative elements"
  color_palette:
    primary_colors: ["#C41E3A (中国红)", "#8B0000 (深红)", "#000000 (水墨黑)"]
    secondary_colors: ["#FFD700 (金)", "#2F4F4F (深青)", "#87CEEB (天青)", "#FFEFD5 (宣纸白)"]
    emotional_mapping: |
      中国红: 吉祥、喜庆、热情
      金: 华贵、典雅、尊贵
      水墨黑: 沉稳、神秘、传统
      青绿: 自然、宁静、高雅
  visual_elements:
    motifs: ["祥云", "龙凤", "牡丹", "竹子", "荷花", "山水", "书法笔触"]
    textures: ["宣纸纹理", "水墨晕染", "绢布质感"]
    composition: ["对称构图", "留白艺术", "流动线条"]
  typography:
    primary_font: "方正舒体 / 汉仪行楷 (标题)"
    secondary_font: "思源宋体 (正文)"
    font_pairing_rationale: "书法体标题传达传统，宋体正文保持易读性"
  motion_design:
    animation_style: "smooth with gentle flow (流畅柔和)"
    easing_vocabulary: ["ease-in-out", "gentle ease"]
    transition_language: ["fade", "dissolve", "ink dissolve (水墨溶解)"]
  texture_and_lighting:
    texture_and_grain: "subtle paper texture, ink wash effects"
    lighting_philosophy: "soft diffuse light with warm accents"
```

#### 和风 (Japanese) 映射
```yaml
japanese_style_mapping:
  visual_aesthetic: "minimalist with illustrative elements"
  color_palette:
    primary_colors: ["#FFB7C5 (樱花粉)", "#FFFFFF (白)", "#F0F0F0 (灰白)"]
    secondary_colors: ["#5B7C99 (蓝绿)", "#FFD700 (金)", "#8B4513 (棕)", "#C0C0C0 (银)"]
    emotional_mapping: |
      樱花粉: 温柔、浪漫、短暂之美
      白: 纯净、简洁、禅意
      蓝绿: 自然、宁静、和谐
  visual_elements:
    motifs: ["樱花", "波浪纹", "富士山", "浮世绘线条", "几何图案"]
    textures: ["和纸纹理", "渐变色彩", "细线纹理"]
    composition: ["极简构图", "负空间利用", "不对称平衡"]
  typography:
    primary_font: "游明朝体 / 思源明朝体 (标题)"
    secondary_font: "Noto Sans JP / 思源黑体 (正文)"
    font_pairing_rationale: "明朝体传达传统美学，黑体保证现代感"
  motion_design:
    animation_style: "slow and deliberate (缓慢 deliberate)"
    easing_vocabulary: ["gentle ease", "linear"]
    transition_language: ["fade", "slide", "soft wipe"]
  texture_and_lighting:
    texture_and_grain: "subtle washi paper texture"
    lighting_philosophy: "soft even light with natural feel"
```

#### 赛博朋克 (Cyberpunk) 映射
```yaml
cyberpunk_style_mapping:
  visual_aesthetic: "tech with cinematic elements"
  color_palette:
    primary_colors: ["#00FFFF (赛博青)", "#FF00FF (霓虹粉)", "#000000 (深黑)"]
    secondary_colors: ["#1a1a2e (深紫蓝)", "#16213e (深蓝)", "#FF4500 (橙红)"]
    emotional_mapping: |
      赛博青: 科技、未来、冷峻
      霓虹粉: 反叛、活力、夜晚
      深黑: 神秘、压抑、未知
  visual_elements:
    motifs: ["霓虹灯", "全息投影", "机械义肢", "雨夜", "电路板", "数据流"]
    textures: ["霓虹光晕", "扫描线", "故障效果", "金属质感"]
    composition: ["高对比度", "倾斜角度", "多视点", "拥挤城市景观"]
  typography:
    primary_font: "Orbitron / Rajdhani (标题 - 英文科技感字体)"
    secondary_font: "Roboto / 思源黑体 (正文)"
    font_pairing_rationale: "科技感标题传达未来感，无衬线体保证易读性"
  motion_design:
    animation_style: "dynamic with glitch effects (动感+故障艺术)"
    easing_vocabulary: ["snap", "elastic", "anticipate"]
    transition_language: ["glitch", "digital wipe", "pixel dissolve"]
  texture_and_lighting:
    texture_and_grain: "digital noise, scanlines, light leaks"
    lighting_philosophy: "high contrast neon lighting with dark shadows"
```

---

## 📋 YAML模板扩展

### 在 complete-template-reference.md 中添加风格相关字段

```yaml
# 在 director_vision 部分添加：
director_vision:
  # 新增：风格定义
  style_definition:
    # 文化风格（可选单选或多选组合）
    cultural_style: "chinese / japanese / korean / western / arabic / african / latino"

    # 时代风格（可选）
    era_style: "classical / modern / future / retro / steampunk"

    # 流派风格（可选）
    genre_style: "minimalist / cyberpunk / vaporwave / pop_art / abstract / hyper_realistic / cartoon"

    # 风格组合说明
    style_rationale: "为什么选择这个/这些风格？如何支持creative_vision？"

    # 示例：
    # cultural_style: "chinese"
    # era_style: "modern"
    # genre_style: "minimalist"
    # style_rationale: "用中国传统美学（中国风）结合现代极简设计，传递传统与现代的融合"

# 在 visual_art.cinematic_style 部分增强：
visual_art:
  cinematic_style:
    visual_aesthetic: "cinematic/graphic/illustrative/flat/minimalist/tech/hyper-realistic"

    # 新增：风格映射应用
    style_integration: |
      根据style_definition自动映射：
      - color_palette: 从风格映射表获取
      - visual_elements: 从风格映射表获取
      - typography: 从风格映射表获取
      - motion_design: 从风格映射表获取
```

---

## 🤖 AI决策树扩展

### 决策树新增：风格推荐逻辑

```yaml
# 决策树新增：style_recommendation_step
style_recommendation_step:
  # 步骤 0：根据用户输入 → 推荐风格组合
  step0_style_recommendation:
    # 场景1：用户明确指定风格（如"中国风视频"）
    explicit_style_input:
      chinese →
        cultural_style: "chinese"
        era_style: "modern" (默认现代中国风，可根据内容调整)
        genre_style: "minimalist" (默认，可调整)

    # 场景2：根据内容主题 → 推荐风格
    content_based_recommendation:
      # 传统文化主题
      traditional_culture → cultural_style: "chinese"
      # 科技主题
      technology → era_style: "future" + genre_style: "cyberpunk"
      # 教育/科普主题
      educational → genre_style: "minimalist" or "illustrative"

    # 场景3：根据情感基调 → 推荐风格
    emotion_based_recommendation:
      professional → genre_style: "minimalist"
      playful → genre_style: "cartoon" or "pop_art"
      inspiring → cultural_style: "chinese" (启发+东方智慧)

  # 风格冲突检测与解决
  style_conflict_resolution:
    # 检测：组合是否合理
    conflict_examples:
      - "chinese + cyberpunk" (冲突：传统vs未来)
      - "classical + vaporwave" (冲突：古典vs波普)
    # 解决：根据优先级选择
    resolution_priority: "cultural > era > genre"
```

---

## 💻 Baoyu-Skills集成

### 图像生成风格映射

当使用baoyu-skills生成素材时，风格定义映射到图像生成参数：

```yaml
# 风格 → 图像生成风格映射
chinese → baoyu-article-illustrator:
  style: "editorial" or "chalkboard"
  elements: "traditional Chinese elements, ink wash style"

cyberpunk → baoyu-infographic:
  style: "technical-schematic" or "bold-graphic"
  elements: "neon lights, digital elements, future tech"

minimalist → baoyu-slide-deck:
  style: "notion" or "bold-editorial"
  elements: "clean lines, geometric shapes, negative space"

cartoon → baoyu-comic:
  style: "classic" or "vibrant"
  elements: "bold outlines, bright colors, expressive characters"
```

---

## 📚 风格知识库文件结构

### 建议创建文件：style-knowledge-base.md

```
.opencode/skills/video-director/
├── SKILL.md
├── style-knowledge-base.md  # 新增：风格知识库
├── director-decision-framework.md
├── complete-template-reference.md
└── complete-examples.md
```

### style-knowledge-base.md 内容结构：
1. 风格分类体系（本文件内容）
2. 风格映射规则（chinese, japanese, cyberpunk等）
3. Baoyu-skills集成规则
4. 风格冲突检测规则

---

## 🎨 风格组合示例

### 示例1：现代中国风科普视频
```yaml
style_definition:
  cultural_style: "chinese"
  era_style: "modern"
  genre_style: "minimalist"
  style_rationale: "用中国传统美学（水墨、留白）结合现代极简设计，传递传统文化的现代诠释"

# 自动映射：
color_palette:
  primary_colors: ["#8B0000 (深红)", "#000000 (水墨黑)", "#FFFFFF (白)"]
  secondary_colors: ["#FFD700 (金)", "#87CEEB (天青)"]

visual_elements:
  motifs: ["水墨笔触", "留白", "传统纹样"]
  composition: ["大量留白", "流动线条"]

motion_design:
  animation_style: "smooth with gentle flow"
  transition_language: ["ink dissolve", "fade"]
```

### 示例2：赛博朋克科技视频
```yaml
style_definition:
  cultural_style: "western"  (或留空)
  era_style: "future"
  genre_style: "cyberpunk"
  style_rationale: "用赛博朋克的霓虹美学和故障艺术，传递科技未来的反乌托邦感"

# 自动映射：
color_palette:
  primary_colors: ["#00FFFF (赛博青)", "#FF00FF (霓虹粉)", "#000000 (深黑)"]
  secondary_colors: ["#1a1a2e (深紫蓝)", "#FF4500 (橙红)"]

visual_elements:
  motifs: ["霓虹灯", "全息投影", "电路板", "故障效果"]
  composition: ["高对比度", "倾斜角度"]

motion_design:
  animation_style: "dynamic with glitch effects"
  transition_language: ["glitch", "digital wipe"]
```

### 示例3：和风治愈视频
```yaml
style_definition:
  cultural_style: "japanese"
  era_style: "modern" (或retro)
  genre_style: "minimalist"
  style_rationale: "用和风的极简禅意和樱花元素，营造治愈放松的氛围"

# 自动映射：
color_palette:
  primary_colors: ["#FFB7C5 (樱花粉)", "#FFFFFF (白)"]
  secondary_colors: ["#5B7C99 (蓝绿)", "#FFD700 (金)"]

visual_elements:
  motifs: ["樱花", "波浪纹", "极简几何"]
  composition: ["极简构图", "负空间"]

motion_design:
  animation_style: "slow and deliberate"
  transition_language: ["fade", "soft slide"]
```

---

## 🔄 实施计划

### Phase 1: 创建风格知识库（1天）
- [ ] 创建 style-knowledge-base.md
- [ ] 定义所有风格映射规则
- [ ] 创建风格组合示例

### Phase 2: 更新主模板（0.5天）
- [ ] 在 complete-template-reference.md 中添加 style_definition 字段
- [ ] 更新 director-decision-framework.md 的决策树
- [ ] 添加风格冲突检测逻辑

### Phase 3: 更新示例（0.5天）
- [ ] 创建中国风视频示例
- [ ] 创建赛博朋克视频示例
- [ ] 创建和风视频示例

### Phase 4: 集成测试（1天）
- [ ] 测试风格组合逻辑
- [ ] 测试Baoyu-skills映射
- [ ] 测试AI决策树推荐

---

## ⚠️ 注意事项

1. **向后兼容**：保留现有 visual_aesthetic 字段，与风格体系共存
2. **灵活性**：支持单风格或多风格组合
3. **可扩展性**：新增风格只需添加定义，无需修改核心逻辑
4. **AI友好**：所有风格定义都结构化，便于AI理解和推荐
5. **用户友好**：提供简单示例，支持用户直接使用"中国风"等自然语言

---

**文档版本**: v1.0
**创建日期**: 2026-01-28
**维护者**: video-director skill team
