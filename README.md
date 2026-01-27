# 基于 Remotion 视频制作模板

## 快速开始

### 1. 配置 MiniMax API Key
项目已预置 MCP 配置，只需替换 API Key：
1. 获取 API Key: [MiniMax 开放平台](https://platform.minimaxi.com/user-center/basic-information/interface-key)
2. 替换配置中的 API Key：
   - **OpenCode 用户**: 编辑 `.opencode/opencode.jsonc` 中的 `MINIMAX_API_KEY`
   - **Claude Code 用户**: 编辑 `.mcp.json` 中的 `MINIMAX_API_KEY`

### 2. 一句话创建视频
使用 OpenCode 或 Claude Code 输入：
```
基于 "docs/跳跳糖.md" 创建一个视频
```
### 3. 查看最终生成的视频
在 public 目录下，找到生成的视频文件。


## 开发命令
```bash
pnpm install      # 安装依赖
pnpm run dev     # 启动开发预览
pnpm run render  # 渲染视频
```

## 更新 remotion-dev/skills
```
npx skills add remotion-dev/skills
```
## 详细指南
- [AGENTS.md](./AGENTS.md) - AI 助手工作流程
- [MiniMax MCP 官方指南](https://platform.minimaxi.com/docs/guides/mcp-guide)

## 常见问题
- **chrome-headless-shell下载失败: 手动下载:https://storage.googleapis.com/chrome-for-testing-public/134.0.6998.35/mac-x64/chrome-headless-shell-mac-x64.zip 后，改名解压缩到 node_modules/.remotion/chrome-headless-shell
