# 基础镜像（选择兼容Java 8的轻量级镜像）
FROM openjdk:8-jre-slim

# 配置容器时区（和application.yml中的GMT+8保持一致）
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# 创建日志目录（避免项目运行时日志目录不存在报错）
RUN mkdir -p /logs && mkdir -p /static

# 复制Maven构建好的jar包到镜像内（匹配你本地实际的jar包名称）
COPY target/study_room-0.0.1-SNAPSHOT.jar /app.jar

# 暴露端口（和application.yml中server.port=8080完全匹配）
EXPOSE 8080

# 设置容器启动命令（指定UTF-8编码，解决中文乱码问题）
CMD ["java", "-Dfile.encoding=UTF-8", "-jar", "/app.jar"]