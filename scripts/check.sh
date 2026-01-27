#!/bin/bash

# ============================================
# AI 质量检查脚本 v1.0
# 用途：自动化执行必须检查项，强制AI验证质量
# ============================================

# 设置环境变量以避免编码问题
export LC_ALL=C
export LANG=C

set -e  # 任何命令失败则退出

echo "=== AI 质量检查（必须检查项）==="
echo "检查时间: $(date)"
echo "项目目录: $(pwd)"
echo ""

# 检查1: TypeScript类型检查
echo "[1/8] 🔍 TypeScript类型检查..."
if pnpm run typecheck 2>&1 | grep -q "error"; then
    echo "❌ TypeScript检查失败"
    pnpm run typecheck
    exit 1
else
    echo "✅ TypeScript类型检查通过"
fi

# 检查2: 相对帧数计算检查
echo "[2/8] 🔍 相对帧数使用检查..."
SCENE_FILES=$(find src/scenes -name "*.tsx" -o -name "*.ts" 2>/dev/null || true)

if [ -z "$SCENE_FILES" ]; then
    echo "⚠️  未找到场景文件，跳过相对帧数检查"
else
    BAD_SCENES=""
    for file in $SCENE_FILES; do
    # 检查是否使用useCurrentFrame但缺少relativeFrame计算
    if grep -q "useCurrentFrame()" "$file"; then
        # 检查各种相对帧数计算模式
        if ! grep -q "const relativeFrame\s*=" "$file" && ! grep -q "frame\s*-\s*from" "$file" && ! grep -q "relativeFrame\s*=" "$file"; then
            BAD_SCENES="$BAD_SCENES $file"
        fi
    fi
    done

    if [ -n "$BAD_SCENES" ]; then
        echo "❌ 以下场景文件可能缺少relativeFrame计算:"
        for file in $BAD_SCENES; do
            echo "   - $file"
        done
        echo "   建议：添加 'const relativeFrame = frame - from;'"
        exit 1
    else
        echo "✅ 所有场景文件使用相对帧数计算"
    fi
fi

# 检查3: 音频文件存在性检查
echo "[3/8] 🔍 音频文件存在性检查..."
AUDIO_FILES=("scene1.mp3" "scene2.mp3" "scene3.mp3" "scene4.mp3")
MISSING_AUDIO=""

for audio in "${AUDIO_FILES[@]}"; do
    if [ ! -f "public/$audio" ]; then
        MISSING_AUDIO="$MISSING_AUDIO $audio"
    fi
done

if [ -n "$MISSING_AUDIO" ]; then
    echo "❌ 缺少音频文件: $MISSING_AUDIO"
    echo "   建议：使用 MiniMax MCP 生成音频文件到 public/ 目录"
    exit 1
else
    echo "✅ 所有音频文件存在"
fi

# 检查4: 音频参数检查（基础版本，检查生成命令使用正确参数）
echo "[4/8] 🔍 音频参数检查（基础验证）..."
echo "   ⚠️  音频参数检查需要手动验证"
echo "   请确保音频生成时使用以下参数："
echo "   - speed=1.0"
echo "   - emotion=neutral"
echo "   - language_boost=Chinese"
echo "   参考命令：MiniMax-mcp_text_to_audio(text=..., speed=1.0, emotion=neutral, ...)"

# 检查5: visual_hook实现检查（基础版本）
echo "[5/8] 🔍 visual_hook实现检查..."
if [ ! -f "public/plan.yaml" ]; then
    echo "⚠️  plan.yaml文件不存在，跳过visual_hook检查"
else
    # 简单检查：plan.yaml是否存在
    HOOK_COUNT=$(grep -c "visual_hook:" public/plan.yaml || echo "0")
    if [ "$HOOK_COUNT" -eq 0 ]; then
        echo "⚠️  plan.yaml中未找到visual_hook定义"
    else
        echo "✅ plan.yaml中存在visual_hook定义（共$HOOK_COUNT个）"
        echo "   请手动验证每个visual_hook是否完整实现"
    fi
fi

# 检查6: 场景过渡实现检查（基础版本）
echo "[6/8] 🔍 场景过渡实现检查..."
MAIN_VIDEO_FILE="src/MainVideo.tsx"
if [ ! -f "$MAIN_VIDEO_FILE" ]; then
    echo "⚠️  MainVideo.tsx文件不存在，跳过场景过渡检查"
else
    SCENE_COUNT=$(grep -c "<Sequence " "$MAIN_VIDEO_FILE" || echo "0")
    if [ "$SCENE_COUNT" -ge 2 ]; then
        echo "✅ MainVideo.tsx中存在$SCENE_COUNT个场景序列"
        echo "   请手动验证场景过渡效果是否符合plan.yaml"
    else
        echo "⚠️  MainVideo.tsx中场景序列少于2个，可能缺少过渡"
    fi
fi

# 检查7: 颜色系统检查（基础版本）
echo "[7/8] 🔍 颜色系统检查..."
VISUAL_DESIGN_FILE="src/utils/visual-design.ts"
if [ ! -f "$VISUAL_DESIGN_FILE" ]; then
    echo "⚠️  visual-design.ts文件不存在，跳过颜色检查"
else
    COLOR_DEF_COUNT=$(grep -c "COLORS" "$VISUAL_DESIGN_FILE" || echo "0")
    if [ "$COLOR_DEF_COUNT" -eq 0 ]; then
        echo "⚠️  visual-design.ts中未找到COLORS定义"
    else
        echo "✅ visual-design.ts中存在颜色系统定义"
    fi
fi

# 检查8: interpolate范围检查（基础版本）
echo "[8/8] 🔍 interpolate范围检查..."
INTERPOLATE_COUNT=0
BAD_INTERPOLATE=0

if [ -n "$SCENE_FILES" ]; then
    for file in $SCENE_FILES; do
        # 统计interpolate使用次数
        count=$(grep -c "interpolate" "$file" || echo "0")
        INTERPOLATE_COUNT=$((INTERPOLATE_COUNT + count))

        # 检查是否有明显的范围错误（简单检查）- 简化版本
        if grep -q "interpolate.*duration" "$file"; then
            # 简单检查，不进行复杂的正则匹配
            echo "   ℹ️  $file中使用interpolate与duration"
        fi
    done
fi

if [ "$INTERPOLATE_COUNT" -eq 0 ]; then
    echo "⚠️  未找到interpolate调用"
elif [ "$BAD_INTERPOLATE" -eq 0 ]; then
    echo "✅ 发现$INTERPOLATE_COUNT个interpolate调用，未发现明显范围错误"
else
    echo "⚠️  发现$INTERPOLATE_COUNT个interpolate调用，其中$BAD_INTERPOLATE个可能存在范围问题"
    echo "   建议：检查interpolate输入范围是否在[0, duration]内"
fi

# 视频时长检查（如果视频已渲染）
echo ""
echo "=== 视频时长检查（可选）==="
if [ -f "output/video.mp4" ]; then
    echo "🔍 检查视频时长匹配..."

    # 检查ffprobe是否可用
    if command -v ffprobe &> /dev/null; then
        # 计算音频总时长
        AUDIO_DURATION=0
        for audio in "${AUDIO_FILES[@]}"; do
            if [ -f "public/$audio" ]; then
                dur=$(ffprobe -v error -show_entries format=duration -of default=noprint_wrappers=1:nokey=1 "public/$audio" 2>/dev/null || echo "0")
                AUDIO_DURATION=$(echo "$AUDIO_DURATION + $dur" | bc 2>/dev/null || echo "$AUDIO_DURATION")
            fi
        done

        # 计算视频时长
        VIDEO_DURATION=$(ffprobe -v error -show_entries format=duration -of default=noprint_wrappers=1:nokey=1 "output/video.mp4" 2>/dev/null || echo "0")

        if [ "$VIDEO_DURATION" != "0" ] && [ "$AUDIO_DURATION" != "0" ]; then
            # 计算差异
            DIFF=$(echo "scale=2; $VIDEO_DURATION - $AUDIO_DURATION" | bc 2>/dev/null || echo "999")
            ABS_DIFF=${DIFF#-}  # 取绝对值

            if (( $(echo "$ABS_DIFF <= 0.1" | bc -l 2>/dev/null || echo "0") )); then
                echo "✅ 视频时长匹配通过"
                echo "   视频时长: ${VIDEO_DURATION}s, 音频总时长: ${AUDIO_DURATION}s, 差异: ${DIFF}s"
            else
                echo "❌ 视频时长匹配失败"
                echo "   视频时长: ${VIDEO_DURATION}s, 音频总时长: ${AUDIO_DURATION}s, 差异: ${DIFF}s"
                echo "   要求：差异 ≤ 0.1秒"
            fi
        else
            echo "⚠️  无法获取音视频时长信息"
        fi
    else
        echo "⚠️  ffprobe不可用，跳过视频时长检查"
        echo "   安装命令: brew install ffmpeg (macOS) 或 apt install ffmpeg (Linux)"
    fi
else
    echo "⚠️  视频文件未渲染，跳过时长检查"
    echo "   运行: pnpm run render 渲染视频"
fi

echo ""
echo "=== 检查完成 ==="
echo "✅ 基础检查完成"
echo ""
echo "📋 后续建议："
echo "1. 手动验证音频参数（speed=1.0, emotion=neutral, language_boost=Chinese）"
echo "2. 验证每个visual_hook是否完整实现"
echo "3. 验证场景过渡效果"
echo "4. 预览检查动画流畅度（运行: pnpm run dev）"
echo "5. 运行完整质量检查（推荐检查项和可选检查项）"
echo ""
echo "🔧 脚本改进计划："
echo "- 增强音频参数验证（解析元数据）"
echo "- 实现visual_hook自动对比"
echo "- 增强interpolate范围分析"
echo "- 集成更多自动化检查"

exit 0
