FROM openjdk:8-jdk-alpine

COPY target/onestop26-0.0.1-SNAPSHOT.jar /app/onestop.jar

WORKDIR /app

CMD ["java", "-jar", "onestop.jar"]
