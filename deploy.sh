#!/bin/bash

# Build the Docker image
docker build -t iris-model-app .

# Stop any running container with the same name
docker stop iris-model-app || true

# Remove any existing container with the same name
docker rm iris-model-app || true

# Run the Docker container
docker run -d -p 5000:5000 --name iris-model-app iris-model-app

