# Java 17 を Render で使うための設定
export JAVA_HOME=/opt/java/openjdk
export PATH=$JAVA_HOME/bin:$PATH

# Maven Wrapper を実行
chmod +x LoginProject/mvnw
LoginProject/mvnw clean package
