FROM eclipse-temurin:17-jdk-alpine
COPY ./project.jar project.jar
ENTRYPOINT ["java", "-jar", "project.jar"]