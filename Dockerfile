# Dockerfile for Java Maven app
FROM openjdk:17-jdk-slim

# Set working directory inside container
WORKDIR /app

# Copy the jar file built by Maven
COPY target/*.jar app.jar

# Expose the port (matches your Jenkins pipeline PORT)
EXPOSE 80

# Run the jar when container starts
ENTRYPOINT ["java", "-jar", "app.jar"]
