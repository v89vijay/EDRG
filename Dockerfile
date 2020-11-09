FROM openjdk:8-jdk-alpine

CMD ["echo","build mvn project first"]

CMD ["mvn clean install"]

CMD ["echo","add target jar"]

ADD target/hello-docker-0.0.1-SNAPSHOT.jar hello-docker.jar

EXPOSE 9080

ENTRYPOINT ["java","-jar","hello-docker.jar"]