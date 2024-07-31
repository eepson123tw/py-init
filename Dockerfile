
# 使用基础镜像
FROM ollama/ollama:latest

# 复制 entrypoint.sh 到容器中
COPY entrypoint.sh /entrypoint.sh

# 确保 entrypoint.sh 具有执行权限
RUN chmod +x /entrypoint.sh

# 设置入口点
ENTRYPOINT ["/usr/bin/bash", "/entrypoint.sh"]
