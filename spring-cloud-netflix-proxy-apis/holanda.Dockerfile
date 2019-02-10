FROM maven:3.6.0-jdk-8-alpine
CMD mkdir -p /holanda
COPY ./holanda/target/holanda-0.0.1-SNAPSHOT.jar /holanda/
WORKDIR /holanda/
ENTRYPOINT [ "java", "-jar", "holanda-0.0.1-SNAPSHOT.jar" ]
EXPOSE 8090 8090