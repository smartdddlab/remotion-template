#!/bin/bash
# ============================================
# Pre-Write Hook: 验证 plan.yaml 生成流程
# 强制执行对抗式验证系统
# ============================================

set -e

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RESET='\033[0m'

echo -e "${YELLOW}🔍 [Hook] 检查 plan.yaml 生成流程...${RESET}"

# 检查是否有 validation-report.yaml
if [ ! -f "validation-report.yaml" ]; then
    echo -e "${RED}❌ [Hook 阻断] 未找到 validation-report.yaml${RESET}"
    echo -e "${RED}   错误: plan.yaml 生成后必须执行对抗式验证${RESET}"
    echo -e "${RED}   解决方案: 运行 video-director skill 完成验证流程${RESET}"
    exit 1
fi

# 验证 validation-report.yaml 是否完整
if ! grep -q "final_confidence:" validation-report.yaml; then
    echo -e "${RED}❌ [Hook 阻断] validation-report.yaml 不完整${RESET}"
    echo -e "${RED}   错误: 缺少最终置信度记录${RESET}"
    exit 1
fi

# 提取置信度
CONFIDENCE=$(grep "final_confidence:" validation-report.yaml | grep -oP '\d+\.?\d*' | head -1)

if [ -z "$CONFIDENCE" ]; then
    echo -e "${RED}❌ [Hook 阻断] 无法解析置信度${RESET}"
    exit 1
fi

# 检查置信度是否达标
if (( $(echo "$CONFIDENCE < 85" | bc -l) )); then
    echo -e "${RED}❌ [Hook 阻断] 置信度不足: ${CONFIDENCE}% < 85%${RESET}"
    echo -e "${RED}   错误: plan.yaml 未通过对抗式验证${RESET}"
    echo -e "${RED}   解决方案: 修订 plan.yaml 并重新运行验证${RESET}"
    exit 1
fi

# 检查 critical 检查项是否全部通过
if ! grep -q "critical_checks_status:" validation-report.yaml; then
    echo -e "${RED}❌ [Hook 阻断] 未找到 critical 检查项状态${RESET}"
    exit 1
fi

# 验证 A1, V1, T3 是否全部 PASS
for check in "A1_voice_timing" "V1_style_definition" "T3_cross_stage_dependency"; do
    if ! grep -A5 "critical_checks_status:" validation-report.yaml | grep -q "${check}.*PASS"; then
        echo -e "${RED}❌ [Hook 阻断] Critical 检查项失败: ${check}${RESET}"
        exit 1
    fi
done

echo -e "${GREEN}✅ [Hook 通过] 对抗式验证完成，置信度: ${CONFIDENCE}%${RESET}"
exit 0
