#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=chunghoangtu/udacity-prj4-kubernetes

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run udacity-prj4 --image=$dockerpath:latest --port 80


# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
sleep 60s
kubectl port-forward pod/udacity-prj4 8000:80

