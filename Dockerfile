FROM python:3.11-alpine

# 设置工作目录
WORKDIR /app

# 安装 uv 包管理器
RUN pip install uv

# 将项目文件复制到容器中
COPY . .

# 安装项目依赖
RUN uv pip install .

# 设置环境变量
ENV MINIMAX_API_KEY=your_api_key_here
ENV MINIMAX_API_HOST=https://api.minimax.chat

# 暴露端口（如果使用SSE模式）
EXPOSE 8000

# 设置入口命令
ENTRYPOINT ["uv", "run", "/app/minimax-mcp/server.py"]
