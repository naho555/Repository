apt-get update && apt-get install -y ncurses-bin
set -e

export JAVA_HOME=$(dirname $(dirname $(readlink -f $(which java))))
export PATH=$JAVA_HOME/bin:$PATH

echo "JAVA_HOME is set to: $JAVA_HOME"
java -version

chmod +x LoginProject/mvnw
LoginProject/mvnw clean package
