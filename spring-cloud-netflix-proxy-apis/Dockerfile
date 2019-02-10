FROM maven:3.6.0-jdk-8-alpine
CMD mkdir -p /eureka
COPY ./eurekaServer/target/eureka-0.0.1-SNAPSHOT.jar /eureka/
WORKDIR /eureka/
ENTRYPOINT [ "java", "-jar", "eureka-0.0.1-SNAPSHOT.jar" ]
EXPOSE 8761
