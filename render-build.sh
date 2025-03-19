export JAVA_HOME=/opt/render/project/.render/versions/java-17
export PATH=$JAVA_HOME/bin:$PATH

echo "JAVA_HOME is set to: $JAVA_HOME"
java -version

chmod +x LoginProject/mvnw
LoginProject/mvnw clean package
