# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-alpine

# Set the working directory in the container
WORKDIR /todo

# Copy the application JAR file
COPY target/todo-0.0.1-SNAPSHOT.jar app.jar

# Expose the port that the application runs on (should match application.properties)
EXPOSE 8000

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
