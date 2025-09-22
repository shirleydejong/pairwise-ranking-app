#!/bin/bash

# Read .env
set -a
source .env
set +a

# Build the Docker image
docker build -t pairwise-ranking-app .

docker create --name temp-container pairwise-ranking-app

# Copy the build files to the host system
docker cp temp-container:/app/build "$BUILD_DEST"

docker rm temp-container