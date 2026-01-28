# 快速开始指南

---

## ⚠️ 前置条件检查（必须）

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

## 🎯 5分钟快速上手

### 步骤1：了解视频导演角色（1分钟）

作为视频导演，你的核心职责是在**前期规划**就统筹全局：

1. **确立创意愿景**：定义核心信息、情感旅程和艺术风格
2. **指导各部门**：为脚本编写、音频设计、视觉艺术和后期制作提供清晰指导
3. **维护质量标准**：实施审查检查点和审批流程
4. **确保连贯输出**：将所有元素统一为专业的最终产品

### 步骤2：了解风格维度（1分钟）

视频风格有**4个维度**，可以自由组合：

**1. 文化风格（Cultural）**
- 中国风、和风、韩风、欧美风、阿拉伯风、非洲风、拉丁美洲风

**2. 时代风格（Era）**
- 古典、现代、未来、复古、蒸汽朋克

**3. 流派风格（Genre）**
- 极简、赛博朋克、蒸汽波、波普、抽象、超写实、卡通

**4. 技术风格（Technical）**
- Cinematic, Graphic, Illustrative, Flat, Minimalist, Tech, Hyper-realistic

### 步骤3：定义导演愿景和风格（1分钟）

在 YAML 模板中完成以下核心部分：

```yaml
director_vision:
  creative_vision: |
    核心信息和情感旅程是什么？
    什么独特的艺术方法将使这个视频与众不同？
    视觉和音频如何协同讲述故事？

  target_audience:
    demographics: "具体说明你为谁创作"
    viewing_context: "考虑平台、设备和观看环境"
    emotional_needs: "观众应该感受到什么并记住什么？"

  success_metrics:
    engagement_goals: "什么构成这个视频的成功？"
    artistic_aspirations: "要追求的创意成就"

# 风格定义（v5.2+）
style_definition:
  cultural_style: "chinese"      # 文化风格
  era_style: "modern"             # 时代风格
  genre_style: "minimalist"       # 流派风格
  style_rationale: "用中国传统美学（水墨、留白）结合现代极简设计"
```

**可用的风格值**：
- cultural_style: `chinese` | `japanese` | `korean` | `western` | `arabic` | `african` | `latino`
- era_style: `classical` | `modern` | `future` | `retro` | `steampunk`
- genre_style: `minimalist` | `cyberpunk` | `vaporwave` | `pop_art` | `abstract` | `hyper_realistic` | `cartoon`

### 步骤4：系统自动映射（2分钟）

定义风格后，系统会自动映射到以下字段：

**自动映射的字段**：
- `visual_art.cinematic_style.color_palette`（配色）
- `visual_art.cinematic_style.visual_elements`（视觉元素）
- `visual_art.typography`（字体）
- `visual_art.motion_design`（动画风格）

**无需手动填写**，系统会根据风格定义自动生成！

### 步骤5：验证结果（1分钟）

检查自动映射是否正确：

```yaml
# 检查 visual_art 部分
visual_art:
  cinematic_style:
    color_palette:
      primary_colors: ["#000000 (水墨黑)", "#FFFFFF (宣纸白)", "#FFD700 (金)"]
      secondary_colors: ["#C41E3A (中国红)", "#2F4F4F (深青)", "#87CEEB (天青)"]

    visual_elements:
      motifs: ["祥云", "龙凤", "牡丹", "竹子", "水墨笔触"]
      textures: ["宣纸纹理", "水墨晕染", "绢布质感"]
      composition: ["对称构图", "留白艺术", "流动线条"]

  typography:
    primary_font: "方正舒体 / 汉仪行楷"
    secondary_font: "思源宋体"

  motion_design:
    animation_style: "smooth with gentle flow"
    transition_language: ["fade", "dissolve", "ink dissolve"]
```

---

## 🎨 核心模块速览

### 1. 脚本编写 (scriptwriting)

```yaml
scriptwriting:
  narrative_structure:
    story_arc: "传统三幕或创新结构"
    pacing_strategy: "信息和情感如何展开"
    key_moments: "必须具有最大影响力的场景"

  scenes:
    - scene_number: 1
      scene_objective: "这个场景必须完成什么"
      narrative_function: "它如何推进整体故事"
      key_dialogue: |
        撰写带有计算字数的旁白
        - 目标：时长秒数 × 3.8 字符/秒
        - 根据情感节奏和重点调整
      emotional_tone: "要达到的特定情感质量"
```

### 2. 音频设计 (audio_design)

```yaml
audio_design:
  voice_direction:
    casting_specifications: "为你的内容定义完美的声音"
    performance_guidance: "提供具体的交付指导"

  sound_design:
    ambient_soundscape: "创建音频环境"
    musical_score: "支持情感旅程的音乐"

  technical_specs:
    recording_standards: "专业 48kHz/24-bit WAV 格式"
    mixing_standards: "-16 LUFS 集成响度"
```

### 3. 视觉艺术 (visual_art)

```yaml
visual_art:
  cinematic_style:
    visual_aesthetic: "整体外观和感觉"
    color_palette: "支持叙事情感的色彩"

  composition:
    aspect_ratio: "根据分发平台选择"
    framing_principles: "三分法、引导线、视觉层次"

  motion_design:
    animation_style: "元素如何移动和交互"
    easing_strategies: "运动加速/减速"
```

### 4. 后期制作 (post_production)

```yaml
post_production:
  editing_approach:
    rhythm_and_pacing: "与叙事匹配的编辑节奏"
    scene_transitions: "场景如何在视觉和听觉上连接"

  color_grading:
    grade_style: "增强情绪和一致性的色彩处理"

  audio_post:
    final_mix: "专业平衡所有音频元素"
```

### 5. 最终交付 (final_deliverables)

```yaml
final_deliverables:
  master_files:
    video_master: "1920x1080, 30fps, H.264, 20 Mbps"
    alternative_versions: "平台优化的变体"

  delivery_specs:
    quality_control_report: "完整的最终 QC 检查清单"
```

### 6. 导演审批 (director_approval)

```yaml
director_approval:
  review_checkpoints:
    script_approval: "音频制作前必需"
    audio_approval: "视觉制作前必需"
    visual_approval: "后期制作前必需"
    final_approval: "分发前必需"

  change_management:
    revision_process: "结构化的反馈和迭代"
    final_lock: "不再进行更改的节点"
```

---

## 💡 常用风格组合

### 组合1: 现代中国风
```yaml
style_definition:
  cultural_style: "chinese"
  era_style: "modern"
  genre_style: "minimalist"
  style_rationale: "传统美学+现代极简"
```
**适用场景**：文化科普、传统文化解读、现代艺术

### 组合2: 赛博朋克未来
```yaml
style_definition:
  cultural_style: "western"
  era_style: "future"
  genre_style: "cyberpunk"
  style_rationale: "霓虹美学+故障艺术+未来科技"
```
**适用场景**：科技视频、AI科普、未来主题

### 组合3: 和风治愈
```yaml
style_definition:
  cultural_style: "japanese"
  era_style: "modern"
  genre_style: "minimalist"
  style_rationale: "禅意美学+樱花元素+极简设计"
```
**适用场景**：治愈视频、冥想指导、放松内容

### 组合4: 复古蒸汽波
```yaml
style_definition:
  cultural_style: "western"
  era_style: "retro"
  genre_style: "vaporwave"
  style_rationale: "90年代怀旧+故障艺术+波普元素"
```
**适用场景**：怀旧主题、文化解读、艺术表达

---

## 🎨 风格对照表

### 文化风格速查

| 风格 | 核心元素 | 典型配色 | 适用场景 |
|------|---------|---------|---------|
| **中国风** | 水墨、祥云、龙凤、留白 | 黑白金、青赤黄白黑 | 传统文化、文化科普 |
| **和风** | 樱花、波浪纹、极简几何 | 樱花粉、蓝绿、金 | 治愈、禅意、放松 |
| **欧美风** | 摄影质感、几何构图 | 高饱和、互补色 | 商业、现代感 |
| **阿拉伯风** | 几何纹样、金箔装饰 | 蓝金、绿银、红铜 | 异域文化、宗教主题 |

### 时代风格速查

| 风格 | 核心元素 | 典型配色 | 适用场景 |
|------|---------|---------|---------|
| **古典** | 雕刻、对称、油画质感 | 深红、金、棕 | 历史、文化 |
| **现代** | 几何、简洁、无衬线 | 白灰黑+单色 | 商业、科技 |
| **未来** | 霓虹、全息、粒子 | 霓虹粉、赛博青、深黑 | 科技、AI、未来 |
| **复古** | 胶片颗粒、老物件 | 复古棕、暖黄、褪色 | 怀旧、回忆 |
| **蒸汽朋克** | 齿轮、蒸汽、黄铜 | 棕黄、铜色、灰 | 科幻、异世界 |

### 流派风格速查

| 风格 | 核心元素 | 典型配色 | 适用场景 |
|------|---------|---------|---------|
| **极简** | 大量留白、几何形状 | 单色+1-2强调色 | 教育、商业、治愈 |
| **赛博朋克** | 霓虹灯、全息、故障 | 霓虹粉、赛博青、深黑 | 科技、AI、未来 |
| **蒸汽波** | 故障艺术、90年代元素 | 粉紫、蓝绿、橙 | 怀旧、艺术 |
| **波普** | 波点、重复图案 | 高饱和对比色（红蓝黄） | 流行文化、艺术 |
| **卡通** | 夸张表现、粗线条 | 高饱和度 | 儿童、趣味、轻松 |

---

## ⚠️ 风格冲突检测

### 不合理的风格组合
以下组合会产生冲突，系统会警告：

- ❌ **中国风 + 赛博朋克**：传统 vs 未来（冲突）
- ❌ **古典 + 蒸汽波**：古典 vs 波普（冲突）
- ❌ **极简 + 蒸汽朋克**：极简 vs 蒸汽（冲突）

### 冲突解决
系统会根据优先级选择：
```
优先级：文化风格 > 时代风格 > 流派风格
```

**示例**：中国风 + 赛博朋克
```
文化风格优先：保留"中国风"
时代风格：保留"现代"（忽略"未来"）
流派风格：保留"极简"（忽略"赛博朋克"）
```

---

## 🔄 从用户输入到风格定义

### 场景1: 用户说"我要一个中国风的视频"
```yaml
# AI 自动推荐
style_definition:
  cultural_style: "chinese"
  era_style: "modern"       # 默认现代
  genre_style: "minimalist"  # 默认极简
```

### 场景2: 用户说"我要一个赛博朋克风格的AI视频"
```yaml
# AI 自动推荐
style_definition:
  cultural_style: "western"
  era_style: "future"
  genre_style: "cyberpunk"
```

### 场景3: 用户说"我要一个治愈的和风视频"
```yaml
# AI 自动推荐
style_definition:
  cultural_style: "japanese"
  era_style: "modern"
  genre_style: "minimalist"
```

---

## 📚 查看完整示例

- **中国风示例**：`style-examples.md` - 示例4 (中医阴阳五行)
- **赛博朋克示例**：`style-examples.md` - 示例5 (AI革命)
- **和风示例**：`style-examples.md` - 示例6 (禅意冥想)

### 其他参考文档
- **所有风格映射**：`style-knowledge-base.md`
- **决策框架**：`director-decision-framework.md`
- **完整模板**：`complete-template-reference.md`

---

## ✅ 检查清单

在使用前，完成以下检查：

- [ ] 已通过前置条件检查（用户提供具体内容）
- [ ] 已了解4个风格维度（文化/时代/流派/技术）
- [ ] 已选择合适的风格组合
- [ ] 已在 YAML 中定义 `style_definition`
- [ ] 已填写 `style_rationale`（为什么选择这个风格）
- [ ] 已检查风格冲突（不合理组合）
- [ ] 已验证自动映射结果（visual_art 部分）
- [ ] 已完成所有导演审批检查点
- [ ] **已执行对抗式验证**（参照 [validation-checklist.yaml](../validation-checklist.yaml) 和 [validation-report-template.yaml](../validation-report-template.yaml)）

---

## 🆘 常见问题

### Q1: 风格系统是必须的吗？
**A:** 不是。风格系统是**可选项**，可以继续使用传统的 `visual_aesthetic` 字段。

### Q2: 可以只定义部分风格吗？
**A:** 可以。可以只定义文化风格，或只定义流派风格，其他留空。

### Q3: 如何覆盖自动映射？
**A:** 在对应字段手动填写，手动填写会覆盖自动映射。

### Q4: 风格映射错了怎么办？
**A:** 检查 `style_definition` 是否正确，或手动调整 `visual_art` 字段。

### Q5: 如何添加新风格？
**A:** 在 `style-knowledge-base.md` 中添加新的风格映射定义。

---

## 🚀 下一步

1. **查看完整示例**：`style-examples.md` 学习3个完整风格示例
2. **查看风格映射**：`style-knowledge-base.md` 了解所有风格详情
3. **开始使用**：在自己的视频规划中定义 `style_definition`
4. **验证结果**：检查自动映射是否正确
5. **调整优化**：根据需要手动调整风格映射

---

**文档版本**：v2.0
**更新日期**：2026-01-29
**维护者**：video-director skill team
