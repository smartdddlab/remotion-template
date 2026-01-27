# 非 DEMO 级 Remotion 视频制作-模板

## 快速开始

### 1. 配置 MiniMax API Key
项目已预置 MCP 配置，只需替换 API Key：
1. 获取 API Key: [MiniMax 开放平台](https://platform.minimaxi.com/user-center/basic-information/interface-key)
2. 替换配置中的 API Key：
   - **OpenCode 用户**: 编辑 `.opencode/opencode.jsonc` 中的 `MINIMAX_API_KEY`
   - **Claude Code 用户**: 编辑 `.mcp.json` 中的 `MINIMAX_API_KEY`

### 2. 一句话创建视频
使用 OpenCode 或 Claude Code 输入：

**样例1：智能风格识别**（AI自动推荐最适合的风格）
```
基于量子计算主题创建一个科普视频
```
*AI会自动识别内容主题，推荐赛博朋克风格，并生成对应的视觉效果*

**样例2：明确风格指定**（用户指定特定风格）
```
基于中国传统文化内容，创建一个中国风的教育视频
```
*系统会应用完整中国风映射，生成水墨、书法等传统元素*

**样例3：经典示例**
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

## 特性

- **高可用性**：非 DEMO 级模板，可直接用于生产环境
- **AI 驱动工作流**：基于 AGENTS.md 规范，自动化视频制作全流程
- **一步到位实现**：完整支持 Canvas 粒子系统、Three.js 3D、Lottie 动画、SVG 动画等高级技术
- **自动化素材生成**：集成 MiniMax MCP 和 baoyu-skills，自动生成音频和图像素材
- **智能风格处理**：支持文化/时代/流派三维风格体系，自动识别、推荐、映射和冲突检测
- **质量保证**：内置质量检查流程和验证脚本
- **三层文档体系**：AGENTS.md（工作流程）+ TECH_GUIDE.md（技术细节）+ templates/（实现方案）

## 是什么 & 不是什么

### ✅ 是什么
- 一个**生产级** Remotion 视频制作模板
- **AI 辅助**的高效视频开发工作流
- **完整实现**复杂视觉效果的技术方案
- **自动化**素材生成和验证的完整工具链

### ❌ 不是什么
- **不是**教学性质的 DEMO 项目
- **不是**需要手动处理每个细节的低效方案
- **不是**简化版的实现示例
- **不是**只能处理简单场景的工具

## 常见问题
- **chrome-headless-shell下载失败: 手动下载:https://storage.googleapis.com/chrome-for-testing-public/134.0.6998.35/mac-x64/chrome-headless-shell-mac-x64.zip 后，改名解压缩到 node_modules/.remotion/chrome-headless-shell
