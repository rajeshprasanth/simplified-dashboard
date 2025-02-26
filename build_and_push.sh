#!/bin/bash

# Define variables
DOCKER_USERNAME="rajeshprasanth"
IMAGE_NAME="simplified-dashboard"
TAG="latest"

# Build the image
docker build -t $DOCKER_USERNAME/$IMAGE_NAME:$TAG .

# Log in to Docker Hub
docker login -u $DOCKER_USERNAME

# Push the image to Docker Hub
docker push $DOCKER_USERNAME/$IMAGE_NAME:$TAG

echo "Image pushed to Docker Hub: $DOCKER_USERNAME/$IMAGE_NAME:$TAG"
