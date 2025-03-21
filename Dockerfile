FROM maven:3.8.2-openjdk-8 AS builder
WORKDIR /build
COPY . .
RUN mvn clean package
RUN ls target/

FROM tomcat:jre8-temurin-focal
COPY --from=builder /build/target/hello-world-war*.war /usr/local/tomcat/webapps
