FROM openjdk:17-alpine

# Uso un volume condiviso nello yaml piuttosto che il COPY qui
# COPY target/sas-0.0.1-SNAPSHOT.jar app.jar

EXPOSE 8081

ENTRYPOINT ["java", "-jar", "/app.jar"]

# docker build -t simulatore-sas .