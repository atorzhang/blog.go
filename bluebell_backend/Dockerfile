FROM --platform=linux/amd64 ubuntu:latest as final

# 设置固定的项目路径
WORKDIR /app

COPY /bin/blog.ubuntu /app/
COPY /conf/config.yaml /app/conf/
COPY /templates/index.html /app/templates/
COPY /static /app/static/

ENV TIME_ZONE Asia/Shanghai

RUN chmod 777 /app
RUN chmod +x /app/blog.ubuntu

# 声明服务端口
EXPOSE 8081

# 需要运行的命令
ENTRYPOINT ["/app/blog.ubuntu", "/app/conf/config.yaml"]