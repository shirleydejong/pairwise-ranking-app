#!/bin/bash

# Read .env
set -a
source .env
set +a

# Build the Docker image
docker build -t pairwise-ranking-app .

# Copy the build files to the host system
docker cp pairwise-ranking-app:/app/build "$BUILD_DEST"