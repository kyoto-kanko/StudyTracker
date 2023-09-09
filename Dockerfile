# ベースイメージとしてOpenJDK 11を使用
FROM openjdk:11-jdk-slim

# アプリケーションのJARファイルをコンテナにコピー
ARG JAR_FILE=build/libs/*.jar
COPY ${JAR_FILE} app.jar

# ポート8080を公開
EXPOSE 8080

# Spring Bootアプリケーションの実行コマンド
ENTRYPOINT ["java", "-jar", "/app.jar"]
