WORKDIR /app
COPY target/*-shaded.jar app.jar
CMD ["java", "-jar", "app.jar"]
