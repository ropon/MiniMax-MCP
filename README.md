![export](https://github.com/MiniMax-AI/MiniMax-01/raw/main/figures/MiniMaxLogo-Light.png)

<div align="center" style="line-height: 1;">
  <a href="https://www.minimax.io" target="_blank" style="margin: 2px; color: var(--fgColor-default);">
    <img alt="Homepage" src="https://img.shields.io/badge/_Homepage-MiniMax-FF4040?style=flat-square&labelColor=2C3E50&logo=data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB2aWV3Qm94PSIwIDAgNDkwLjE2IDQxMS43Ij48ZGVmcz48c3R5bGU+LmNscy0xe2ZpbGw6I2ZmZjt9PC9zdHlsZT48L2RlZnM+PHBhdGggY2xhc3M9ImNscy0xIiBkPSJNMjMzLjQ1LDQwLjgxYTE3LjU1LDE3LjU1LDAsMSwwLTM1LjEsMFYzMzEuNTZhNDAuODIsNDAuODIsMCwwLDEtODEuNjMsMFYxNDVhMTcuNTUsMTcuNTUsMCwxLDAtMzUuMDksMHY3OS4wNmE0MC44Miw0MC44MiwwLDAsMS04MS42MywwVjE5NS40MmExMS42MywxMS42MywwLDAsMSwyMy4yNiwwdjI4LjY2YTE3LjU1LDE3LjU1LDAsMCwwLDM1LjEsMFYxNDVBNDAuODIsNDAuODIsMCwwLDEsMTQwLDE0NVYzMzEuNTZhMTcuNTUsMTcuNTUsMCwwLDAsMzUuMSwwVjIxNy41aDBWNDAuODFhNDAuODEsNDAuODEsMCwxLDEsODEuNjIsMFYyODEuNTZhMTEuNjMsMTEuNjMsMCwxLDEtMjMuMjYsMFptMjE1LjksNjMuNEE0MC44Niw0MC44NiwwLDAsMCw0MDguNTMsMTQ1VjMwMC44NWExNy41NSwxNy41NSwwLDAsMS0zNS4wOSwwdi0yNjBhNDAuODIsNDAuODIsMCwwLDAtODEuNjMsMFYzNzAuODlhMTcuNTUsMTcuNTUsMCwwLDEtMzUuMSwwVjMzMGExMS42MywxMS42MywwLDEsMC0yMy4yNiwwdjQwLjg2YTQwLjgxLDQwLjgxLDAsMCwwLDgxLjYyLDBWNDAuODFhMTcuNTUsMTcuNTUsMCwwLDEsMzUuMSwwdjI2MGE0MC44Miw0MC44MiwwLDAsMCw4MS42MywwVjE0NWExNy41NSwxNy41NSwwLDEsMSwzNS4xLDBWMjgxLjU2YTExLjYzLDExLjYzLDAsMCwwLDIzLjI2LDBWMTQ1QTQwLjg1LDQwLjg1LDAsMCwwLDQ0OS4zNSwxMDQuMjFaIi8+PC9zdmc+&logoWidth=20" style="display: inline-block; vertical-align: middle;"/>
  </a>
  <a href="https://arxiv.org/abs/2501.08313" target="_blank" style="margin: 2px;">
    <img alt="Paper" src="https://img.shields.io/badge/📖_Paper-MiniMax--01-FF4040?style=flat-square&labelColor=2C3E50" style="display: inline-block; vertical-align: middle;"/>
  </a>
   <a href="https://chat.minimax.io/" target="_blank" style="margin: 2px;">
    <img alt="Chat" src="https://img.shields.io/badge/_MiniMax_Chat-FF4040?style=flat-square&labelColor=2C3E50&logo=data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB2aWV3Qm94PSIwIDAgNDkwLjE2IDQxMS43Ij48ZGVmcz48c3R5bGU+LmNscy0xe2ZpbGw6I2ZmZjt9PC9zdHlsZT48L2RlZnM+PHBhdGggY2xhc3M9ImNscy0xIiBkPSJNMjMzLjQ1LDQwLjgxYTE3LjU1LDE3LjU1LDAsMSwwLTM1LjEsMFYzMzEuNTZhNDAuODIsNDAuODIsMCwwLDEtODEuNjMsMFYxNDVhMTcuNTUsMTcuNTUsMCwxLDAtMzUuMDksMHY3OS4wNmE0MC44Miw0MC44MiwwLDAsMS04MS42MywwVjE5NS40MmExMS42MywxMS42MywwLDAsMSwyMy4yNiwwdjI4LjY2YTE3LjU1LDE3LjU1LDAsMCwwLDM1LjEsMFYxNDVBNDAuODIsNDAuODIsMCwwLDEsMTQwLDE0NVYzMzEuNTZhMTcuNTUsMTcuNTUsMCwwLDAsMzUuMSwwVjIxNy41aDBWNDAuODFhNDAuODEsNDAuODEsMCwxLDEsODEuNjIsMFYyODEuNTZhMTEuNjMsMTEuNjMsMCwxLDEtMjMuMjYsMFptMjE1LjksNjMuNEE0MC44Niw0MC44NiwwLDAsMCw0MDguNTMsMTQ1VjMwMC44NWExNy41NSwxNy41NSwwLDAsMS0zNS4wOSwwdi0yNjBhNDAuODIsNDAuODIsMCwwLDAtODEuNjMsMFYzNzAuODlhMTcuNTUsMTcuNTUsMCwwLDEtMzUuMSwwVjMzMGExMS42MywxMS42MywwLDEsMC0yMy4yNiwwdjQwLjg2YTQwLjgxLDQwLjgxLDAsMCwwLDgxLjYyLDBWNDAuODFhMTcuNTUsMTcuNTUsMCwwLDEsMzUuMSwwdjI2MGE0MC44Miw0MC44MiwwLDAsMCw4MS42MywwVjE0NWExNy41NSwxNy41NSwwLDEsMSwzNS4xLDBWMjgxLjU2YTExLjYzLDExLjYzLDAsMCwwLDIzLjI2LDBWMTQ1QTQwLjg1LDQwLjg1LDAsMCwwLDQ0OS4zNSwxMDQuMjFaIi8+PC9zdmc+&logoWidth=20" style="display: inline-block; vertical-align: middle;"/>
  </a>
  <a href="https://www.minimax.io/platform" style="margin: 2px;">
    <img alt="API" src="https://img.shields.io/badge/⚡_API-Platform-FF4040?style=flat-square&labelColor=2C3E50" style="display: inline-block; vertical-align: middle;"/>
  </a>  
</div>
<div align="center" style="line-height: 1;">
  <a href="https://huggingface.co/MiniMaxAI" target="_blank" style="margin: 2px;">
    <img alt="Hugging Face" src="https://img.shields.io/badge/🤗_Hugging_Face-MiniMax-FF4040?style=flat-square&labelColor=2C3E50" style="display: inline-block; vertical-align: middle;"/>
  </a>
  <a href="https://github.com/MiniMax-AI/MiniMax-01/blob/main/figures/wechat-qrcode.jpeg" target="_blank" style="margin: 2px;">
    <img alt="WeChat" src="https://img.shields.io/badge/_WeChat-MiniMax-FF4040?style=flat-square&labelColor=2C3E50" style="display: inline-block; vertical-align: middle;"/>
  </a>
  <a href="https://www.modelscope.cn/organization/MiniMax" target="_blank" style="margin: 2px;">
    <img alt="ModelScope" src="https://img.shields.io/badge/_ModelScope-MiniMax-FF4040?style=flat-square&labelColor=2C3E50" style="display: inline-block; vertical-align: middle;"/>
  </a>
</div>
<div align="center" style="line-height: 1;">
   <a href="https://github.com/MiniMax-AI/MiniMax-MCP/blob/main/LICENSE" style="margin: 2px;">
    <img alt="Code License" src="https://img.shields.io/badge/_Code_License-MIT-FF4040?style=flat-square&labelColor=2C3E50" style="display: inline-block; vertical-align: middle;"/>
  </a>
</div>

<p align="center">
  Official MiniMax Model Context Protocol (MCP) server that enables interaction with powerful Text to Speech and video/image generation APIs. This server allows MCP clients like <a href="https://www.anthropic.com/claude">Claude Desktop</a>, <a href="https://www.cursor.so">Cursor</a>, <a href="https://codeium.com/windsurf">Windsurf</a>, <a href="https://github.com/openai/openai-agents-python">OpenAI Agents</a> and others to generate speech, clone voices, generate video, generate image and more.
</p>

## Documentation
- [中文文档](README-CN.md)
- [MiniMax-MCP-JS](https://github.com/MiniMax-AI/MiniMax-MCP-JS) - Official JavaScript implementation of MiniMax MCP

## Quickstart with MCP Client
1. Get your API key from [MiniMax](https://www.minimax.io/platform/user-center/basic-information/interface-key). 
2. Install `uv` (Python package manager), install with `curl -LsSf https://astral.sh/uv/install.sh | sh` or see the `uv` [repo](https://github.com/astral-sh/uv) for additional install methods.

### Claude Desktop
Go to `Claude > Settings > Developer > Edit Config > claude_desktop_config.json` to include the following:

```
{
  "mcpServers": {
    "MiniMax": {
      "command": "uvx",
      "args": [
        "minimax-mcp"
      ],
      "env": {
        "MINIMAX_API_KEY": "<insert-your-api-key-here>",
        "MINIMAX_MCP_BASE_PATH": "<local-output-dir-path>",
        "MINIMAX_API_HOST": "https://api.minimaxi.chat",
        "MINIMAX_API_RESOURCE_MODE": "<optional, [url|local], url is default, audio/image/video are downloaded locally or provided in URL format>"
      }
    }
  }
}

```
⚠️ Warning: The API key needs to match the host. If an error "API Error: invalid api key" occurs, please check your api host:
- Global Host：`​https://api.minimaxi.chat` (note the extra "i")
- Mainland Host：​`https://api.minimax.chat`

If you're using Windows, you will have to enable "Developer Mode" in Claude Desktop to use the MCP server. Click "Help" in the hamburger menu in the top left and select "Enable Developer Mode".


### Cursor
Go to `Cursor -> Preferences -> Cursor Settings -> MCP -> Add new global MCP Server` to add above config.

That's it. Your MCP client can now interact with MiniMax through these tools:

## Transport
We support two transport types: stdio and sse.
| stdio  | SSE  |
|:-----|:-----|
| Run locally | Can be deployed locally or in the cloud |
| Communication through `stdout` | Communication through `network` |
| Input: Supports processing `local files` or valid `URL` resources | Input: When deployed in the cloud, it is recommended to use `URL` for input |

## Available Tools
| tool  | description  |
|-|-|
|`text_to_audio`|Convert text to audio with a given voice|
|`list_voices`|List all voices available|
|`voice_clone`|Clone a voice using provided audio files|
|`generate_video`|Generate a video from a prompt|
|`text_to_image`|Generate a image from a prompt|

## Example usage

⚠️ Warning: Using these tools may incur costs.

### 1. broadcast a segment of the evening news
<img src="https://public-cdn-video-data-algeng.oss-cn-wulanchabu.aliyuncs.com/Snipaste_2025-04-09_20-07-53.png?x-oss-process=image/resize,p_50/format,webp" style="display: inline-block; vertical-align: middle;"/>

### 2. clone a voice
<img src="https://public-cdn-video-data-algeng.oss-cn-wulanchabu.aliyuncs.com/Snipaste_2025-04-09_19-45-13.png?x-oss-process=image/resize,p_50/format,webp" style="display: inline-block; vertical-align: middle;"/>

### 3. generate a video
<img src="https://public-cdn-video-data-algeng.oss-cn-wulanchabu.aliyuncs.com/Snipaste_2025-04-09_19-58-52.png?x-oss-process=image/resize,p_50/format,webp" style="display: inline-block; vertical-align: middle;"/>
<img src="https://public-cdn-video-data-algeng.oss-cn-wulanchabu.aliyuncs.com/Snipaste_2025-04-09_19-59-43.png?x-oss-process=image/resize,p_50/format,webp" style="display: inline-block; vertical-align: middle; "/>

### 4. generate images
<img src="https://public-cdn-video-data-algeng.oss-cn-wulanchabu.aliyuncs.com/gen_image.png?x-oss-process=image/resize,p_50/format,webp" style="display: inline-block; vertical-align: middle;"/>
<img src="https://public-cdn-video-data-algeng.oss-cn-wulanchabu.aliyuncs.com/gen_image1.png?x-oss-process=image/resize,p_50/format,webp" style="display: inline-block; vertical-align: middle; "/>

</readme>
