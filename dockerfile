# Use a base image with Java installed
FROM openjdk:11-jre-slim

# Set the working directory in the container
WORKDIR /app

# Copy the packaged JAR file into the container
COPY target/demo-0.0.1-SNAPSHOT.jar /app

# Specify the command to run your application
CMD ["java", "-jar", "demo-0.0.1-SNAPSHOT.jar"]
