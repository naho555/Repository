echo "Starting build process..."
set -x

apt-get update && apt-get install -y openjdk-17-jdk

export JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64
export PATH=$JAVA_HOME/bin:$PATH

echo "JAVA_HOME is set to: $JAVA_HOME"
java -version

chmod +x LoginProject/mvnw
LoginProject/mvnw clean package
