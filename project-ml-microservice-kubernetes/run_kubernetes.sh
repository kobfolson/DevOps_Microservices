#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=kobby/udacity-ml-model

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run kube-app --image $dockerpath

# Step 3:
# List kubernetes pods
kubectl get pods -A

# Step 4:
# Forward the container port to a host
kubectl port-forward pod/kube-app 8000:80
