FROM node:22-slim
RUN apt-get update \
 && apt-get install -y --no-install-recommends python3 python3-pip \
 && pip3 install --break-system-packages --no-cache-dir mcp-proxy \
 && npm install -g obsidian-mcp@2 \
 && npm cache clean --force \
 && rm -rf /var/lib/apt/lists/*
ENTRYPOINT ["mcp-proxy"]
