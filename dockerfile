FROM openjdk:17-alpine

# Uso un volume condiviso nello yaml piuttosto che il COPY qui
# COPY target/sas-0.0.1-SNAPSHOT.jar app.jar

ENTRYPOINT ["java", "-jar", "/app.jar"]

# docker build -t openjdk:17-alpine .