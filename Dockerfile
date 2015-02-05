FROM dockerfile/java:openjdk-7-jdk
MAINTAINER chuck@norris.com

RUN mkdir /chuck
ADD . /chuck

WORKDIR /chuck

RUN ./gradlew build --stacktrace

EXPOSE 8080
ENTRYPOINT java -jar /chuck/build/libs/spring-boot-helloworld-0.1.0.jar
