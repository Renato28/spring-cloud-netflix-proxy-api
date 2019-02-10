FROM maven:3.6.0-jdk-8-alpine
CMD mkdir -p /brasil
COPY ./brasil/target/brasil-0.0.1-SNAPSHOT.jar /brasil/
WORKDIR /brasil/
ENTRYPOINT [ "java", "-jar", "brasil-0.0.1-SNAPSHOT.jar" ]
EXPOSE 8060 8060