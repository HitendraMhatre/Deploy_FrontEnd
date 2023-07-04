FROM registry.access.redhat.com/ubi8/openjdk-8

COPY target/onestop26-0.0.1-SNAPSHOT.jar /app/onestop.jar

WORKDIR /app

CMD ["java", "-jar", "onestop.jar"]
