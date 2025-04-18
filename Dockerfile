# Start with Alpine Python image
FROM python:3.11-alpine AS builder

# Set up the working directory
WORKDIR /app

# Install necessary build dependencies
RUN apk add --no-cache gcc musl-dev libffi-dev

# Install uv
RUN pip install --no-cache-dir uv

# Enable bytecode compilation and set copy mode for mounted volumes
ENV UV_COMPILE_BYTECODE=1
ENV UV_LINK_MODE=copy

# Install the project's dependencies
RUN --mount=type=cache,target=/root/.cache/uv \
    --mount=type=bind,source=uv.lock,target=uv.lock \
    --mount=type=bind,source=pyproject.toml,target=pyproject.toml \
    uv sync --frozen --no-install-project --no-dev --no-editable

# Add the project source code and install it
ADD . /app
RUN --mount=type=cache,target=/root/.cache/uv \
    uv sync --frozen --no-dev --no-editable

# Start the final stage with a clean Alpine Python image
FROM python:3.11-alpine

# Set up the working directory
WORKDIR /app

# Copy only the virtual environment from the builder stage
COPY --from=builder /app/.venv /app/.venv

# Add the virtual environment to the PATH
ENV PATH="/app/.venv/bin:$PATH"

# Set the entrypoint
ENTRYPOINT ["minimax-mcp"]


# Start with Alpine Python image
FROM python:3.11-alpine AS builder

# Set up the working directory
WORKDIR /app

# Install necessary build dependencies
RUN apk add --no-cache gcc musl-dev libffi-dev

# Install uv
RUN pip install --no-cache-dir uv

# Enable bytecode compilation and set copy mode for mounted volumes
ENV UV_COMPILE_BYTECODE=1
ENV UV_LINK_MODE=copy

# Install the project's dependencies
RUN --mount=type=cache,target=/root/.cache/uv \
    --mount=type=bind,source=uv.lock,target=uv.lock \
    --mount=type=bind,source=pyproject.toml,target=pyproject.toml \
    uv sync --frozen --no-install-project --no-dev --no-editable

# Add the project source code and install it
ADD . /app
RUN --mount=type=cache,target=/root/.cache/uv \
    uv sync --frozen --no-dev --no-editable

# Start the final stage with a clean Alpine Python image
FROM python:3.11-alpine

# Set up the working directory
WORKDIR /app

# Copy only the virtual environment from the builder stage
COPY --from=builder /app/.venv /app/.venv

# Add the virtual environment to the PATH
ENV PATH="/app/.venv/bin:$PATH"

# app env
ENV MINIMAX_API_HOST=https://api.minimax.chat

# Set the entrypoint
ENTRYPOINT ["minimax-mcp"]

