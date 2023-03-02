# Start with a base image that has Java and Maven installed
FROM maven:3.8.3-jdk-11 AS build
WORKDIR /app

# Clone the GitHub repository and build the project
RUN git clone https://github.com/rahulguptaft9/student-management-system-springboot.git
WORKDIR /app/student-management-system-springboot
RUN mvn clean package

# Create a new image with the compiled application
FROM openjdk:11-jre-slim
WORKDIR /app
COPY --from=build /app/student-management-system-springboot/target/student-management-system-0.0.1-SNAPSHOT.jar .

# Start the application
CMD ["java", "-jar", "student-management-system-0.0.1-SNAPSHOT.jar"]

EXPOSE 8080
