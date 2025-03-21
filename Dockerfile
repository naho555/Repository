# ベースイメージ
FROM openjdk:17

# 作業ディレクトリを設定
WORKDIR /app

# 必要なファイルのみコピー
COPY pom.xml mvnw mvnw.cmd ./
COPY src/ src/

# Maven Wrapper の実行権限を設定
RUN chmod +x mvnw

# 依存関係をダウンロード（キャッシュを活用）
RUN ./mvnw dependency:go-offline

# 残りのファイルをコピー
COPY . .

# 実行スクリプトを走らせる
RUN ./mvnw clean package
