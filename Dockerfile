FROM ubuntu:latest
RUN apt-get update && apt-get -y install openjdk-17-jdk
COPY HelloWorld-Spring-App/spring-boot-helloworld-0.0.1-SNAPSHOT.jar /
EXPOSE 80
CMD ["java", "-jar", "spring-boot-helloworld-0.0.1-SNAPSHOT.jar"]
