FROM maven:eclipse-temurin

# ARG JAR_FILE=/target/*.jar
ARG PORT=8085

EXPOSE ${PORT}

COPY src /app/src
COPY pom.xml /app

WORKDIR /app

# RUN mvn clean install -DskipTests

CMD [ "mvn", "spring-boot:run" ]

# COPY ${JAR_FILE} app.jar

# ENTRYPOINT ["java","-jar","/app.jar"]


