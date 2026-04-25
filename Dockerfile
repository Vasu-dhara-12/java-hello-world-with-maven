# Stage 1: Build the JAR
FROM maven:3.9.6-eclipse-temurin-17 AS build

WORKDIR /app

# Copy pom first (for dependency caching)
COPY pom.xml .
RUN mvn dependency:go-offline

# Copy source code
COPY src ./src

# Build shaded JAR
RUN mvn clean package -DskipTests

# Stage 2: Run the JAR
FROM eclipse-temurin:17-jdk-alpine

WORKDIR /app

# Copy the fat JAR from build stage
COPY --from=build /app/target/*jar /app/app.jar

# Run your main class (already defined in shade plugin)
CMD ["java", "-jar", "app.jar"]
