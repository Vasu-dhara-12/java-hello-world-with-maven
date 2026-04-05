# Dockerfile
FROM openjdk:17-slim

# Set working directory
WORKDIR /app

# Copy jar file
COPY target/jb-hello-world-maven-0.2.1-SNAPSHOT-shaded.jar app.jar

# Run the jar
CMD ["java", "-jar", "app.jar"]
