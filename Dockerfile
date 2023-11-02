# Use the official Python image from Docker Hub as the base image
FROM python:3.8-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install specific versions of Flask and Werkzeug
RUN pip install Flask==2.0.1 Werkzeug==2.0.1

# Expose the port on which the app will run
EXPOSE 8080

# Define the command to run your application
CMD ["python", "app.py"]
