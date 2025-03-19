export JAVA_HOME="/usr/lib/jvm/java-17-openjdk"
export PATH="$JAVA_HOME/bin:$PATH"

echo "JAVA_HOME is set to: $JAVA_HOME"
ls $JAVA_HOME
java -version

chmod +x LoginProject/mvnw
LoginProject/mvnw clean package
