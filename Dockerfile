FROM eclipse-temurin:17-jdk

WORKDIR /app

COPY target/jb-hello-world-maven-0.2.1-SNAPSHOT-shaded.jar app.jar

CMD ["java", "-jar", "app.jar"]
