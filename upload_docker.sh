#!/usr/bin/env bash

# Create dockerpath
dockerpath=annt1290/flask-app:v1.0.0

# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker tag flask-app $dockerpath
docker login

# Push image to a docker repository
docker push $dockerpath
