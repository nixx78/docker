FROM openjdk:17-jdk-alpine
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar

COPY /environment/int ./environment/int

WORKDIR /

ENTRYPOINT ["java","-jar","/app.jar"]