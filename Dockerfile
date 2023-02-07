FROM maven:3-eclipse-temurin-17 as build

COPY ./ /src

RUN cd /src/orchestrate && \
    mvn install && \
    cd /src && \
    mvn package

FROM eclipse-temurin:17-jre-alpine

COPY --from=build /src/target/app.jar /app/app.jar

ENTRYPOINT ["java", "-jar", "/app/app.jar"]

EXPOSE 8080
