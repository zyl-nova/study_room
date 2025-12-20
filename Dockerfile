# 阶段1：构建Spring Boot后端Jar包（使用Maven镜像）
FROM maven:3.8.5-openjdk-8 AS backend-build
WORKDIR /app
# 复制pom.xml和源代码
COPY pom.xml .
COPY src ./src
# 执行Maven打包（跳过测试）
RUN mvn clean package -DskipTests


# 阶段2：运行Jar包（使用JDK8镜像）
FROM openjdk:8-jre-slim
WORKDIR /app
# 从构建阶段复制Jar包到当前镜像
COPY --from=backend-build /app/target/study_room-0.0.1-SNAPSHOT.jar app.jar
# 暴露后端服务端口（根据你的项目配置，默认是8080）
EXPOSE 8080
# 启动命令
ENTRYPOINT ["java", "-jar", "app.jar"]