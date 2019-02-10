FROM maven:3.6.0-jdk-8-alpine
CMD mkdir -p /argentina
COPY ./argentina/target/argentina-0.0.1-SNAPSHOT.jar /argentina/
WORKDIR /argentina/
ENTRYPOINT [ "java", "-jar", "argentina-0.0.1-SNAPSHOT.jar" ]
EXPOSE 8040 8040