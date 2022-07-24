#!/usr/bin/env bash

# Docker ID/path
dockerpath=annt1290/flask-app:v1.0.0

# Run the Docker Hub container with kubernetes
kubectl create deploy flask-app --image=$dockerpath

# List kubernetes pods
kubectl get pods

# Forward the container port to a host
kubectl port-forward $(kubectl get pods -o name | grep "flask-app") --address 0.0.0.0 8000:80
