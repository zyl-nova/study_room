# ===================== 阶段1：构建用户端前端（front.front） =====================
# 基础镜像：Node.js 16 环境，用于前端编译
FROM node:16 AS frontend-user-build
# 设置工作目录
WORKDIR /app/front-user
# 1. 先拷贝 package.json 和 package-lock.json（利用 Docker 缓存，依赖不变时不用重新安装）
COPY src/main/resources/front.front/package*.json ./
# 2. 安装前端依赖
RUN npm install
# 3. 拷贝前端所有源码
COPY src/main/resources/front.front/ ./
# 4. 编译构建前端，生成 dist 文件夹
RUN npm run build

# ===================== 阶段2：构建管理端前端（admin.admin） =====================
FROM node:16 AS frontend-admin-build
WORKDIR /app/front-admin
COPY src/main/resources/admin.admin/package*.json ./
RUN npm install
COPY src/main/resources/admin.admin/ ./
RUN npm run build

# ===================== 阶段3：构建后端 Java 项目 =====================
# 基础镜像：Maven 3.8 + OpenJDK 11，用于后端编译打包
FROM maven:3.8-openjdk-11 AS backend-build
WORKDIR /app/backend
# 1. 拷贝 pom.xml（先装依赖，利用缓存）
COPY pom.xml ./
# 2. 拷贝后端源码
COPY src/main/java ./src/main/java
COPY src/main/resources ./src/main/resources
# 3. 打包后端，跳过测试，生成 jar 包到 target 目录
RUN mvn clean package -Dmaven.test.skip=true

# ===================== 阶段4：最终运行镜像（轻量，只保留运行环境） =====================
# 基础镜像：OpenJDK 11 的 JRE 环境，比完整 JDK 体积小很多
FROM openjdk:11-jre-slim
WORKDIR /app
# 1. 从前端用户端构建阶段拷贝 dist 到最终镜像的前端目录
COPY --from=frontend-user-build /app/front-user/dist ./src/main/resources/front.front/dist
# 2. 从前端管理端构建阶段拷贝 dist 到最终镜像的管理端目录
COPY --from=frontend-admin-build /app/front-admin/dist ./src/main/resources/admin.admin/dist
# 3. 从后端构建阶段拷贝 jar 包到最终镜像
COPY --from=backend-build /app/backend/target/*.jar app.jar
# 4. 容器启动时执行的命令：启动后端服务
CMD ["java", "-jar", "app.jar"]