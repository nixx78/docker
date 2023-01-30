FROM openjdk:17-jdk-alpine
ARG JAR_FILE=target/*.jar
ARG APP_FOLDER=hello-app

RUN mkdir ${APP_FOLDER}

COPY ${JAR_FILE} ${APP_FOLDER}/app.jar

COPY /environment/int ./${APP_FOLDER}/environment/int

WORKDIR /${APP_FOLDER}

RUN echo =============
RUN echo /${APP_FOLDER}/app.jar
RUN echo =============

ENTRYPOINT ["java", "-jar", "/hello-app/app.jar", "app.arg1, app.arg2"]