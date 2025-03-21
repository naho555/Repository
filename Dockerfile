# 1. ビルド環境の設定
FROM maven:3.8.6-eclipse-temurin-17 AS build

WORKDIR /app

# プロジェクトのソースコードをコンテナにコピー
COPY LoginProject/pom.xml .
COPY LoginProject/mvnw .
COPY LoginProject/mvnw.cmd .
COPY LoginProject/.mvn .mvn
COPY LoginProject/src/ src/

# Maven Wrapper の権限を設定
RUN chmod +x mvnw

# 依存関係をダウンロードしてキャッシュを活用
RUN ./mvnw dependency:go-offline

# 2. 実行環境の設定
FROM eclipse-temurin:17-jdk

WORKDIR /app

# ビルド済みの JAR ファイルをコピー
COPY --from=build /app/target/*.jar app.jar

# アプリケーションを実行
CMD ["java", "-jar", "app.jar"]
