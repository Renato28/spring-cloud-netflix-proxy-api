FROM maven:3.6.0-jdk-8-alpine
CMD mkdir -p /belgica
COPY ./belgica/target/belgica-0.0.1-SNAPSHOT.jar /belgica/
WORKDIR /belgica/
ENTRYPOINT [ "java", "-jar", "belgica-0.0.1-SNAPSHOT.jar" ]
EXPOSE 8050 8050