FROM maven:3.9-eclipse-temurin-11 AS build
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn clean package -DskipTests

FROM tomcat:9.0-jdk11-temurin
RUN rm -rf /usr/local/tomcat/webapps/ROOT
COPY --from=build /app/target/mail_list_web.war /usr/local/tomcat/webapps/ROOT.war
EXPOSE 8080
CMD ["catalina.sh", "run"]