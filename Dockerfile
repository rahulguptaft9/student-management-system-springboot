FROM openjdk:8-jdk-alpine
EXPOSE 3000
ADD target/student-management-system-0.0.1-SNAPSHOT.jar student-management-system-0.0.1-SNAPSHOT.jar
ENTRYPOINT [ "java","-jar","/student-management-system-0.0.1-SNAPSHOT.jar" ]
