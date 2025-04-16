FROM python:3.11-alpine

# 设置工作目录
WORKDIR /app

# 安装系统依赖
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    curl \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# 安装 uv 包管理器
RUN curl -LsSf https://astral.sh/uv/install.sh | sh

# 将项目文件复制到容器中
COPY . .

# 安装项目依赖
RUN /root/.cargo/bin/uv pip install -e .

# 设置环境变量
ENV PYTHONUNBUFFERED=1
ENV MINIMAX_API_HOST=https://api.minimax.chat
ENV MINIMAX_API_RESOURCE_MODE=url

# 设置挂载卷，用于持久化数据
VOLUME ["/data"]
ENV MINIMAX_MCP_BASE_PATH=/data

# 暴露端口（如果使用SSE模式）
EXPOSE 8000

# 设置入口命令
ENTRYPOINT ["minimax-mcp"]

# 使用方法说明
# 构建镜像:
#   docker build -t minimax-mcp .
#
# 运行 stdio 模式 (默认):
#   docker run -e MINIMAX_API_KEY=your_api_key -v /path/to/local/data:/data minimax-mcp
#
# 运行 SSE 模式:
#   docker run -e MINIMAX_API_KEY=your_api_key -v /path/to/local/data:/data -p 8000:8000 minimax-mcp --sse --host 0.0.0.0 --port 8000
#
# 国际版 API:
#   docker run -e MINIMAX_API_KEY=your_api_key -e MINIMAX_API_HOST=https://api.minimaxi.chat -v /path/to/local/data:/data minimax-mcp
#
# 国内版 API:
#   docker run -e MINIMAX_API_KEY=your_api_key -e MINIMAX_API_HOST=https://api.minimax.chat -v /path/to/local/data:/data minimax-mcp 