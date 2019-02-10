FROM maven:3.6.0-jdk-8-alpine
CMD mkdir -p /zuul
COPY ./zuul/target/zuul-0.0.1-SNAPSHOT.jar /zuul/
WORKDIR /zuul/
ENTRYPOINT [ "java", "-jar", "zuul-0.0.1-SNAPSHOT.jar" ]
EXPOSE 8089 8761