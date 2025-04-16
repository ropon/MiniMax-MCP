# MiniMax MCP Docker 部署指南

本指南将帮助您使用 Docker 或 Docker Compose 部署 MiniMax MCP 服务。MiniMax MCP 是一个模型上下文协议服务器，可以将 MiniMax 的文本转语音、语音克隆、视频生成和图像生成等功能集成到支持 MCP 协议的应用程序中，如 Claude Desktop、Cursor 等。

## 前提条件

- [Docker](https://docs.docker.com/get-docker/) 已安装
- [Docker Compose](https://docs.docker.com/compose/install/) 已安装（可选，用于使用 docker-compose.yml）
- MiniMax API 密钥（可从 [MiniMax 开放平台](https://www.minimax.io/platform/user-center/basic-information/interface-key) 获取）

## 快速开始

### 方法一：使用 Docker Compose（推荐）

1. 创建 `.env` 文件，并添加必要的环境变量：

```
MINIMAX_API_KEY=your_api_key
# 国内版API
MINIMAX_API_HOST=https://api.minimax.chat  
# 或使用国际版API
# MINIMAX_API_HOST=https://api.minimaxi.chat  
# 资源模式：url 或 local
MINIMAX_API_RESOURCE_MODE=url
```

2. 启动服务：

```bash
# 启动所有服务（包括 stdio 和 SSE 模式）
docker-compose up -d

# 或仅启动 stdio 模式（适用于本地客户端连接）
docker-compose up -d minimax-mcp

# 或仅启动 SSE 模式（适用于网络客户端连接）
docker-compose up -d minimax-mcp-sse
```

3. 查看日志：

```bash
docker-compose logs -f
```

### 方法二：直接使用 Docker

1. 构建 Docker 镜像：

```bash
docker build -t minimax-mcp .
```

2. 运行容器：

```bash
# stdio 模式（默认）
docker run -e MINIMAX_API_KEY=your_api_key -v $(pwd)/data:/data minimax-mcp

# SSE 模式
docker run -e MINIMAX_API_KEY=your_api_key -v $(pwd)/data:/data -p 8000:8000 minimax-mcp --sse --host 0.0.0.0 --port 8000

# 国际版 API
docker run -e MINIMAX_API_KEY=your_api_key -e MINIMAX_API_HOST=https://api.minimaxi.chat -v $(pwd)/data:/data minimax-mcp
```

## 连接到 Claude Desktop

1. 启动 MiniMax MCP 服务（使用 stdio 模式）
2. 在 Claude Desktop 中，前往 `Claude > Settings > Developer > Edit Config > claude_desktop_config.json`
3. 将以下配置添加到 JSON 中：

```json
{
  "mcpServers": {
    "MiniMax": {
      "command": "docker",
      "args": [
        "run",
        "--rm",
        "-e", "MINIMAX_API_KEY=your_api_key",
        "-e", "MINIMAX_API_HOST=https://api.minimax.chat",
        "-v", "/path/to/your/data:/data",
        "minimax-mcp"
      ]
    }
  }
}
```

## 连接到 Cursor

1. 启动 MiniMax MCP 服务（使用 stdio 或 SSE 模式）
2. 在 Cursor 中，前往 `Cursor -> Preferences -> Cursor Settings -> MCP -> Add new global MCP Server`
3. 添加以下配置：

对于 stdio 模式：
```
Command: docker
Args: run --rm -e MINIMAX_API_KEY=your_api_key -e MINIMAX_API_HOST=https://api.minimax.chat -v /path/to/your/data:/data minimax-mcp
```

对于 SSE 模式：
```
URL: http://localhost:8000
```

## 模式说明

| 模式   | 说明                                  |
|:-----|:------------------------------------|
| stdio | 在本地部署运行，通过 `stdout` 通信，支持处理本地文件或有效的 URL 资源 |
| SSE   | 本地或云端部署均可，通过网络通信，云端部署时建议使用 URL 进行输入 |

## 提示和注意事项

1. **API 密钥匹配**：API 密钥需要与 API Host 匹配。如果出现 "API Error: invalid api key" 错误，请检查您的 API Host：
   - 国际版 Host：`https://api.minimaxi.chat`（注意额外的 "i" 字母）
   - 国内版 Host：`https://api.minimax.chat`

2. **数据持久化**：所有生成的文件都存储在容器的 `/data` 目录中，该目录已通过卷映射到宿主机的相应目录。

3. **URL vs 本地模式**：
   - URL 模式（`MINIMAX_API_RESOURCE_MODE=url`）：API 返回资源的 URL
   - 本地模式（`MINIMAX_API_RESOURCE_MODE=local`）：API 返回的资源将下载到本地文件系统

4. **安全性考虑**：在生产环境中，建议：
   - 不要将 API 密钥直接写入 Dockerfile 或 docker-compose.yml
   - 使用环境变量或专门的密钥管理工具管理敏感信息
   - 如果部署在公共网络，为 SSE 模式添加适当的身份验证和 HTTPS

5. **成本注意**：使用 MiniMax API 可能会产生费用，特别是：
   - 文本转语音功能（文本长度影响成本）
   - 语音克隆功能（克隆后首次使用时收费）
   - 视频和图像生成功能

## 支持的功能

| 功能           | 描述                   |
|:-------------|:---------------------|
| `text_to_audio` | 使用指定音色将文本生成音频       |
| `list_voices`   | 查询所有可用音色            |
| `voice_clone`   | 根据指定音频文件克隆音色        |
| `generate_video` | 根据指定 prompt 生成视频    |
| `text_to_image` | 根据指定 prompt 生成图片    | 