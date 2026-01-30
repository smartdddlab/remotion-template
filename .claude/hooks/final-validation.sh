#!/bin/bash
# ============================================
# Final Hook: 最终验证
# ============================================

set -e

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RESET='\033[0m'

echo -e "${YELLOW}🔍 [Final Hook] 执行最终验证...${RESET}"

# 检查 plan.yaml 是否存在
if [ ! -f "public/plan.yaml" ]; then
    echo -e "${RED}❌ [Final Hook] 未找到 public/plan.yaml${RESET}"
    exit 1
fi

# 检查是否通过验证
if [ ! -f "validation-report.yaml" ]; then
    echo -e "${RED}❌ [Final Hook] 未找到 validation-report.yaml${RESET}"
    echo -e "${RED}   plan.yaml 必须通过对抗式验证${RESET}"
    exit 1
fi

# 验证置信度
CONFIDENCE=$(grep "final_confidence:" validation-report.yaml | grep -oP '\d+\.?\d*' | head -1)
if (( $(echo "$CONFIDENCE < 85" | bc -l) )); then
    echo -e "${RED}❌ [Final Hook] 置信度不足: ${CONFIDENCE}%${RESET}"
    exit 1
fi

echo -e "${GREEN}✅ [Final Hook] 所有验证通过${RESET}"
exit 0
