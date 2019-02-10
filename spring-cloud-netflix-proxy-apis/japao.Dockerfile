FROM maven:3.6.0-jdk-8-alpine
CMD mkdir -p /japao
COPY ./japao/target/japao-0.0.1-SNAPSHOT.jar /japao/
WORKDIR /japao/
ENTRYPOINT [ "java", "-jar", "japao-0.0.1-SNAPSHOT.jar" ]
EXPOSE 8089 8089