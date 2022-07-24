#!/usr/bin/env bash

# Build image and add a descriptive tag
docker buildx build --platform=linux/amd64 -t flask-app .

# List docker images
docker images

# Run flask app
docker run --platform linux/amd64 --rm -it -p 8000:80 --name flask-app flask-app
