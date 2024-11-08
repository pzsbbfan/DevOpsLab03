# Use an official OpenJDK image as the base image
FROM openjdk:11-jdk-slim

# Set the working directory in the container
WORKDIR /app

# Copy the built jar file from your project into the container
COPY target/your-application-name.jar /app/your-application-name.jar

# Expose the port your application uses
EXPOSE 8081

# Command to run your application
ENTRYPOINT ["java", "-jar", "/app/your-application-name.jar"]
