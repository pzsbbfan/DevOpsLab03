# Use an official Tomcat image as the base image
FROM tomcat:9.0-jdk11-openjdk-slim

# Set the working directory
WORKDIR /usr/local/tomcat

# Copy the built war file from your project into the webapps directory of Tomcat
COPY target/LucasFanLab03.war /usr/local/tomcat/webapps/

# Expose the port Tomcat uses
EXPOSE 8083

# Start Tomcat
CMD ["catalina.sh", "run"]
