FROM openjdk:8-jdk-alpine
EXPOSE 3000
ADD target/rahulgupta.jar rahulgupta.jar
ENTRYPOINT [ "java","-jar","/rahulgupta.jar" ]
