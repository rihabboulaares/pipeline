# Étape 1 : utiliser une image Java
FROM openjdk:17-jdk-slim

LABEL maintainer="rihabboulaares@esprit.tn"

WORKDIR /app

# Copier le JAR généré par Maven
COPY target/*.jar app.jar

# Exposer le port de l'application
EXPOSE 8080

# Lancer l'application
ENTRYPOINT ["java","-jar","app.jar"]
