# Java 17 の公式イメージを使用
FROM openjdk:17-jdk-slim

# 作業ディレクトリを設定
WORKDIR /app

# ソースコードをコンテナにコピー
COPY . /app

# 必要なパッケージをインストール（tput のエラーを防ぐ）
RUN apt-get update && apt-get install -y ncurses-bin

# 環境変数を設定
ENV TERM=xterm

# Maven のビルドを実行
RUN chmod +x render-build.sh
RUN ./render-build.sh

# アプリケーションを実行
CMD ["java", "-jar", "target/*.jar"]
