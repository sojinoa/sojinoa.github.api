# Use the official OpenJDK 11 image from the Docker Hub
FROM openjdk:11-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY src/main/java /app

# Compile the Java program
RUN javac Main.java

# Command to run the application
CMD ["java", "Main"]
