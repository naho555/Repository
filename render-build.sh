
export JAVA_HOME=/opt/java/openjdk
export PATH=$JAVA_HOME/bin:$PATH

echo "JAVA_HOME is set to: $JAVA_HOME"
java -version

chmod +x LoginProject/mvnw
LoginProject/mvnw clean package
