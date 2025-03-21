
COPY pom.xml mvnw mvnw.cmd ./
COPY src/ src/

FROM openjdk:17
WORKDIR /app
COPY . .
RUN chmod +x mvnw
RUN ./mvnw clean package
CMD ["java", "-jar", "target/*.jar", "--server.port=$PORT"]
ENV JAVA_HOME /usr/lib/jvm/java-17-openjdk
ENV PATH "$JAVA_HOME/bin:$PATH"

