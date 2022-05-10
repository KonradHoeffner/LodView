FROM maven:3-jdk-11 AS builder
WORKDIR /app
COPY pom.xml /app
RUN mvn dependency:resolve -Dmaven.test.skip=true
COPY . /app
RUN mvn compile war:war

FROM tomcat:9
ENV CATALINA_OPTS="-XX:+UseSerialGC"
COPY --from=builder /app/target/lodview.war /usr/local/tomcat/webapps/ROOT.war
COPY --from=builder /app/logging.properties /usr/local/tomcat/conf/logging.properties
CMD ["catalina.sh", "run"]
EXPOSE 8080 8009
