#!/bin/bash

# ============================================
# 实现方案验证脚本 v1.0
# 用途：验证 IMPLEMENTATION_PLAN.md 文档结构
# ============================================

set -e  # 任何命令失败则退出

PLAN_FILE="${1:-IMPLEMENTATION_PLAN.md}"

echo "=== 实现方案文档验证 ==="
echo "验证文件: $PLAN_FILE"
echo "验证时间: $(date)"
echo ""

if [ ! -f "$PLAN_FILE" ]; then
    echo "❌ 错误：方案文档不存在: $PLAN_FILE"
    echo ""
    echo "📋 创建方案文档步骤："
    echo "1. 复制模板: cp templates/IMPLEMENTATION_PLAN_TEMPLATE.md IMPLEMENTATION_PLAN.md"
    echo "2. 填写项目信息"
    echo "3. 设计场景实现方案"
    echo "4. 更新开发确认状态"
    exit 1
fi

echo "🔍 检查文档基本结构..."

# 检查必要章节
required_sections=(
    "## 📋 项目信息"
    "## 🎯 方案总结"
    "## 🎬 场景实现方案"
    "## 🔄 场景过渡设计"
    "## 🎨 视觉设计实现"
    "## 🔧 技术实现细节"
    "## 📝 开发确认"
    "## 🔗 质量检查"
)

missing_sections=()
for section in "${required_sections[@]}"; do
    if ! grep -q "^$section" "$PLAN_FILE"; then
        missing_sections+=("$section")
    fi
done

if [ ${#missing_sections[@]} -eq 0 ]; then
    echo "✅ 所有必要章节存在"
else
    echo "❌ 缺少以下章节:"
    for section in "${missing_sections[@]}"; do
        echo "   - $section"
    done
    echo ""
    echo "📋 修复建议："
    echo "1. 参考模板: templates/IMPLEMENTATION_PLAN_TEMPLATE.md"
    echo "2. 添加缺失章节"
    exit 1
fi

# 检查开发确认标记
echo "🔍 检查开发确认状态..."
CONFIRMATION_PASSED=true

if ! grep -q "\[x\] 方案已设计完成" "$PLAN_FILE"; then
    echo "❌ 缺少确认标记: [x] 方案已设计完成"
    CONFIRMATION_PASSED=false
fi

if ! grep -q "\[x\] 用户已确认方案" "$PLAN_FILE"; then
    echo "❌ 缺少确认标记: [x] 用户已确认方案"
    CONFIRMATION_PASSED=false
fi

if ! grep -q "\[x\] 技术可行性验证" "$PLAN_FILE"; then
    echo "⚠️  缺少确认标记: [x] 技术可行性验证（可选但推荐）"
fi

if ! grep -q "\[x\] 资源准备就绪" "$PLAN_FILE"; then
    echo "⚠️  缺少确认标记: [x] 资源准备就绪（可选但推荐）"
fi

if [ "$CONFIRMATION_PASSED" = true ]; then
    echo "✅ 开发确认状态通过"
else
    echo "❌ 开发确认状态不完整"
    echo ""
    echo "📋 修复建议："
    echo "1. 确保方案设计已完成"
    echo "2. 获得用户确认"
    echo "3. 更新确认标记为 [x]"
    exit 1
fi

# 检查场景方案
echo "🔍 检查场景方案..."
SCENE_COUNT=$(grep -c "### Scene[0-9]:" "$PLAN_FILE" || echo "0")

if [ "$SCENE_COUNT" -eq 0 ]; then
    echo "❌ 未找到场景方案定义"
    echo "   需要至少定义1个场景（通常4个场景）"
    exit 1
else
    echo "✅ 发现 $SCENE_COUNT 个场景方案"

    # 检查每个场景的关键信息
    for i in $(seq 1 "$SCENE_COUNT"); do
        if grep -q "### Scene$i:" "$PLAN_FILE"; then
            SCENE_CONTENT=$(sed -n "/### Scene$i:/,/### Scene$(($i+1)):/p" "$PLAN_FILE" | head -20)

            # 检查技术要点
            if ! echo "$SCENE_CONTENT" | grep -q "技术要点"; then
                echo "⚠️  Scene$i 缺少'技术要点'描述"
            fi

            # 检查动画策略
            if ! echo "$SCENE_CONTENT" | grep -q "动画策略"; then
                echo "⚠️  Scene$i 缺少'动画策略'描述"
            fi

            # 检查音频匹配
            if ! echo "$SCENE_CONTENT" | grep -q "音频匹配"; then
                echo "⚠️  Scene$i 缺少'音频匹配'信息"
            fi
        fi
    done
fi

# 检查技术实现细节
echo "🔍 检查技术实现细节..."
TECH_CHECKS=0

if grep -q "相对帧数计算" "$PLAN_FILE"; then
    TECH_CHECKS=$((TECH_CHECKS + 1))
fi

if grep -q "interpolate正确使用" "$PLAN_FILE"; then
    TECH_CHECKS=$((TECH_CHECKS + 1))
fi

if grep -q "范围验证" "$PLAN_FILE"; then
    TECH_CHECKS=$((TECH_CHECKS + 1))
fi

if grep -q "音频同步" "$PLAN_FILE"; then
    TECH_CHECKS=$((TECH_CHECKS + 1))
fi

if [ "$TECH_CHECKS" -ge 2 ]; then
    echo "✅ 技术实现细节完整（$TECH_CHECKS/4 项）"
else
    echo "⚠️  技术实现细节不完整（仅 $TECH_CHECKS/4 项）"
    echo "   建议添加：相对帧数计算、interpolate使用、范围验证、音频同步"
fi

# 检查质量检查引用
echo "🔍 检查质量检查引用..."
if grep -q "QUALITY_CHECKLIST" "$PLAN_FILE" || grep -q "质量检查清单" "$PLAN_FILE"; then
    echo "✅ 引用了质量检查清单"
else
    echo "⚠️  未引用质量检查清单"
    echo "   建议添加对 QUALITY_CHECKLIST_TEMPLATE.md 的引用"
fi

# 检查plan.yaml引用
echo "🔍 检查规划文档引用..."
if grep -q "plan.yaml" "$PLAN_FILE"; then
    echo "✅ 引用了规划文档 (plan.yaml)"
else
    echo "⚠️  未引用规划文档"
    echo "   方案应基于 public/plan.yaml 设计"
fi

echo ""
echo "=== 验证结果汇总 ==="

# 计算分数
TOTAL_POINTS=0
EARNED_POINTS=0

# 章节完整度（40分）
if [ ${#missing_sections[@]} -eq 0 ]; then
    EARNED_POINTS=$((EARNED_POINTS + 40))
    echo "✅ 章节完整度: 40/40 分"
else
    missing_count=${#missing_sections[@]}
    section_score=$((40 - missing_count * 5))
    if [ $section_score -lt 0 ]; then
        section_score=0
    fi
    EARNED_POINTS=$((EARNED_POINTS + section_score))
    echo "⚠️  章节完整度: $section_score/40 分（缺少 $missing_count 个章节）"
fi

# 开发确认（20分）
if [ "$CONFIRMATION_PASSED" = true ]; then
    EARNED_POINTS=$((EARNED_POINTS + 20))
    echo "✅ 开发确认: 20/20 分"
else
    echo "❌ 开发确认: 0/20 分"
fi

# 场景方案（20分）
if [ "$SCENE_COUNT" -ge 1 ]; then
    scene_score=$((SCENE_COUNT * 5))
    if [ $scene_score -gt 20 ]; then
        scene_score=20
    fi
    EARNED_POINTS=$((EARNED_POINTS + scene_score))
    echo "✅ 场景方案: $scene_score/20 分（$SCENE_COUNT 个场景）"
else
    echo "❌ 场景方案: 0/20 分"
fi

# 技术细节（10分）
tech_score=$((TECH_CHECKS * 2))
if [ $tech_score -gt 10 ]; then
    tech_score=10
fi
EARNED_POINTS=$((EARNED_POINTS + tech_score))
echo "✅ 技术细节: $tech_score/10 分"

# 引用完整性（10分）
ref_score=0
if grep -q "plan.yaml" "$PLAN_FILE"; then
    ref_score=$((ref_score + 5))
fi
if grep -q "QUALITY_CHECKLIST" "$PLAN_FILE" || grep -q "质量检查清单" "$PLAN_FILE"; then
    ref_score=$((ref_score + 5))
fi
EARNED_POINTS=$((EARNED_POINTS + ref_score))
echo "✅ 引用完整性: $ref_score/10 分"

TOTAL_POINTS=100
SCORE_PERCENT=$((EARNED_POINTS * 100 / TOTAL_POINTS))

echo ""
echo "📊 最终评分: $EARNED_POINTS/$TOTAL_POINTS ($SCORE_PERCENT%)"

if [ $SCORE_PERCENT -ge 80 ]; then
    echo "🎉 方案文档验证通过！"
    echo "   评分等级: 优秀"
elif [ $SCORE_PERCENT -ge 60 ]; then
    echo "✅ 方案文档基本合格"
    echo "   评分等级: 良好（建议改进）"
elif [ $SCORE_PERCENT -ge 40 ]; then
    echo "⚠️  方案文档需要改进"
    echo "   评分等级: 及格（必须改进）"
else
    echo "❌ 方案文档不合格"
    echo "   评分等级: 不及格（需要重做）"
    exit 1
fi

echo ""
echo "📋 改进建议："
if [ $SCORE_PERCENT -lt 100 ]; then
    if [ ${#missing_sections[@]} -gt 0 ]; then
        echo "1. 添加缺失章节：${missing_sections[*]}"
    fi

    if [ "$SCENE_COUNT" -lt 4 ]; then
        echo "2. 添加更多场景方案（推荐4个场景）"
    fi

    if [ "$TECH_CHECKS" -lt 4 ]; then
        echo "3. 完善技术实现细节（相对帧数、interpolate、范围验证、音频同步）"
    fi

    if [ $ref_score -lt 10 ]; then
        echo "4. 添加必要的引用（plan.yaml、质量检查清单）"
    fi
else
    echo "1. 方案文档结构完整，可以开始开发"
    echo "2. 确保已获得用户确认"
    echo "3. 开发前运行质量检查：bash scripts/check.sh"
fi

echo ""
echo "🔗 相关资源："
echo "- 模板文件: templates/IMPLEMENTATION_PLAN_TEMPLATE.md"
echo "- 质量检查清单: templates/QUALITY_CHECKLIST_TEMPLATE.md"
echo "- 项目经验模板: templates/PROJECT_LESSONS_TEMPLATE.md"
echo "- 主流程文档: AGENTS.md"
echo "- 技术指南: TECH_GUIDE.md"

exit 0
