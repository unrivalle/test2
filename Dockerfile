# Use the official Python image as a base image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install Flask and other dependencies
RUN pip install --no-cache-dir Flask

# Expose the port on which the Flask app will run
EXPOSE 8080

# Define environment variable
ENV NAME World

# Command to run the Flask application
CMD ["python", "app.py"]
