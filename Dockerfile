# Use an official Python runtime as a parent image
FROM python:3.8-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 5000 for Flask (or adjust if using FastAPI with a different port)
EXPOSE 5000

# Define environment variable
ENV FLASK_APP=api_server.py  

# Run the Flask app (or adjust command for FastAPI)
CMD ["flask", "run", "--host=0.0.0.0"]
