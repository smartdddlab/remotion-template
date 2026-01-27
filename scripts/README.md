# 自动化脚本使用指南

## 📋 概述

本目录包含Remotion视频模板项目的自动化质量检查脚本，遵循中的三层文档体系要求。

## 🛠️ 可用脚本

### 1. `check.sh` - AI质量检查脚本
**用途**: 执行8项必须检查，强制AI验证视频制作质量
**遵循**: 方案中的必须检查项要求

### 2. `validate-plan.sh` - 实现方案验证脚本  
**用途**: 验证IMPLEMENTATION_PLAN.md文档结构完整性
**遵循**: 方案中的模板结构要求

## 📊 脚本功能详解

### check.sh (8项必须检查)

#### 检查项列表
1. **TypeScript类型检查**
   - 验证项目TypeScript代码无类型错误
   - 使用`pnpm run typecheck`命令

2. **相对帧数使用检查**
   - 检查场景文件是否正确使用相对帧数计算
   - 验证是否使用`const relativeFrame = frame - from`或类似模式
   - 避免跨场景帧数混乱

3. **音频文件存在性检查**
   - 检查必需的音频文件是否存在
   - 默认检查: `scene1.mp3`, `scene2.mp3`, `scene3.mp3`, `scene4.mp3`
   - 文件应位于`public/`目录

4. **音频参数检查（基础验证）**
   - 提醒开发者使用正确的音频参数
   - 建议参数: `speed=1.0`, `emotion=neutral`, `language_boost=Chinese`
   - 需要手动验证实际参数使用

5. **visual_hook实现检查**
   - 检查`plan.yaml`中是否定义了visual_hook
   - 统计visual_hook数量
   - 提醒手动验证每个visual_hook是否完整实现

6. **场景过渡实现检查**
   - 检查`MainVideo.tsx`中的场景序列数量
   - 验证是否至少有2个场景序列
   - 提醒验证场景过渡效果

7. **颜色系统检查**
   - 检查是否存在`src/utils/visual-design.ts`文件
   - 验证颜色系统定义
   - 提醒建立统一的颜色系统

8. **interpolate范围检查**
   - 统计场景文件中interpolate使用次数
   - 检查是否存在明显的范围错误
   - 提醒验证输入范围在[0, duration]内

#### 可选检查
- **视频时长匹配检查**: 如果视频已渲染，检查视频与音频时长匹配
  - 要求: 差异 ≤ 0.1秒
  - 需要`ffprobe`工具支持

### validate-plan.sh (实现方案验证)

#### 验证内容
1. **文档结构验证** - 检查8个必要章节是否存在
2. **开发确认状态** - 验证4个确认标记是否完成
3. **场景方案完整性** - 检查场景定义和技术要点
4. **技术实现细节** - 验证关键技术考虑点
5. **引用完整性** - 检查相关文档引用

#### 评分系统 (100分制)
- **章节完整度**: 40分
- **开发确认**: 20分  
- **场景方案**: 20分
- **技术细节**: 10分
- **引用完整性**: 10分

#### 评分等级
- **优秀**: ≥80分
- **良好**: 60-79分
- **及格**: 40-59分
- **不及格**: <40分

## 🚀 使用方法

### 基本使用
```bash
# 给予执行权限（首次使用）
chmod +x scripts/*.sh

# 运行质量检查
./scripts/check.sh

# 验证实现方案文档
./scripts/validate-plan.sh IMPLEMENTATION_PLAN.md

# 或使用默认文件名
./scripts/validate-plan.sh
```

### 集成到工作流程

#### 方案设计阶段
```bash
# 1. 创建实现方案文档
cp templates/IMPLEMENTATION_PLAN_TEMPLATE.md IMPLEMENTATION_PLAN.md

# 2. 填写方案内容

# 3. 验证方案结构
./scripts/validate-plan.sh

# 4. 修复验证发现的问题
```

#### 开发阶段
```bash
# 1. 开始开发前运行检查
./scripts/check.sh

# 2. 修复检查发现的问题

# 3. 开发过程中定期检查
```

#### 质量保证阶段
```bash
# 1. 完成开发后运行完整检查
./scripts/check.sh

# 2. 验证所有质量要求

# 3. 渲染视频后检查时长匹配
```

## ⚙️ 配置与自定义

### check.sh 配置
```bash
# 修改音频文件列表
AUDIO_FILES=("scene1.mp3" "scene2.mp3" "scene3.mp3" "scene4.mp3")

# 修改场景文件路径
SCENE_FILES=$(find src/scenes -name "*.tsx" -o -name "*.ts" 2>/dev/null || true)
```

### validate-plan.sh 配置
```bash
# 修改默认方案文件名
PLAN_FILE="${1:-IMPLEMENTATION_PLAN.md}"

# 修改必要章节列表
required_sections=(
    "## 📋 项目信息"
    "## 🎯 方案总结"
    # ... 其他章节
)
```

## 🔧 故障排除

### 常见问题

#### 1. 编码显示问题
**症状**: 中文字符显示为乱码
**解决**: 脚本已设置`export LC_ALL=C`，如仍有问题可调整终端编码设置

#### 2. grep正则表达式错误
**症状**: "repetition-operator operand invalid"错误
**解决**: 已修复interpolate检查中的正则表达式问题

#### 3. 权限问题
**症状**: "Permission denied"错误
**解决**: 运行`chmod +x scripts/*.sh`

#### 4. 工具依赖问题
**症状**: ffprobe不可用，视频时长检查跳过
**解决**: 安装ffmpeg: `brew install ffmpeg` (macOS) 或 `apt install ffmpeg` (Linux)

### 调试模式
```bash
# 显示详细输出
bash -x ./scripts/check.sh

# 检查特定部分
grep -n "检查项名称" scripts/check.sh
```

## 📈 扩展与改进

### 计划改进项
1. **音频参数自动验证** - 解析音频文件元数据验证参数
2. **visual_hook自动对比** - 比较plan.yaml与实现代码
3. **interpolate范围分析** - 更精确的范围验证
4. **性能检查** - 动画帧率、内存使用检查
5. **更多质量检查项** - 扩展推荐和可选检查

### 贡献指南
1. 在AGENTS.md中定义新的检查项要求
2. 在TECH_GUIDE.md中添加技术细节
3. 在check.sh中实现检查逻辑
4. 测试验证功能完整性
5. 更新本使用文档

## 🔗 相关文档

- **主流程文档**: ../AGENTS.md
- **技术指南**: ../TECH_GUIDE.md  
- **实现方案模板**: ../templates/IMPLEMENTATION_PLAN_TEMPLATE.md
- **质量检查清单**: ../templates/QUALITY_CHECKLIST_TEMPLATE.md

## 📝 版本历史

### v1.0 (2026-01-28)
- 初始版本发布
- 实现8项必须检查
- 实现方案文档验证
- 完整的测试验证

---
*最后更新: 2026-01-28*
