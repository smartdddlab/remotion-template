# Hooks 配置指南

## 概述

Hooks 是 Claude Code 的强制执行机制，可在工具执行前/后自动运行脚本，实现质量门禁。

## 全局配置 (推荐)

编辑 `~/.claude/settings.json`：

```json
{
  "hooks": {
    "PreToolUse": [
      {
        "matcher": "Write",
        "hooks": [
          {
            "type": "command",
            "command": "~/.claude/hooks/pre-plan-check.sh ${tool_input}"
          }
        ]
      }
    ],
    "Stop": [
      {
        "hooks": [
          {
            "type": "command",
            "command": "~/.claude/hooks/final-validation.sh"
          }
        ]
      }
    ]
  }
}
```

## 项目级配置

项目级 hooks 可以放在 `.claude/hooks/` 目录，配置在 `settings.json` 中使用相对路径：

```json
{
  "hooks": {
    "PreToolUse": [
      {
        "matcher": "Write",
        "hooks": [
          {
            "type": "command",
            "command": ".claude/hooks/pre-plan-check.sh ${tool_input}"
          }
        ]
      }
    ]
  }
}
```

## 可用的 Hook 类型

| Hook 事件 | 触发时机 | 可阻断 |
|----------|---------|-------|
| `PreToolUse` | 工具执行**前** | ✅ 是 |
| `PostToolUse` | 工具执行**后** | ❌ 否 |
| `Stop` | 会话结束时 | ❌ 否 |
| `UserPromptSubmit` | 用户提交提示**前** | ✅ 是 |

## 钩子脚本位置

```
~/.claude/hooks/
├── pre-plan-check.sh      # plan.yaml 生成前验证
├── final-validation.sh    # 会话结束时最终验证
└── pre-commit-check.sh    # 代码提交前检查
```

## 环境变量

钩子脚本可使用以下变量：
- `${tool_input}` - 工具输入参数
- `${tool_name}` - 工具名称
- `${cwd}` - 当前工作目录

## 注意事项

1. **必须有执行权限**：`chmod +x ~/.claude/hooks/*.sh`
2. **脚本必须 exit 0** 表示通过，非 0 表示阻断
3. **PreToolUse 是唯一可阻断的钩子**
4. **调试时注释掉钩子**，避免频繁触发
