FROM openjdk:17-jdk-slim
WORKDIR /app
COPY target/gs-spring-boot-docker-0.1.0.jar app.jar
ENTRYPOINT ["java", "-jar", "/app/app.jar"]

