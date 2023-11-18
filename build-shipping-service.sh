#!/bin/bash

# 1. Perintah untuk membuat Docker image dari Dockerfile.
# Baris ini menggunakan perintah docker build untuk membuat Docker image 
docker build -t shipping-service:latest .
docker tag shipping-service:latest ghcr.io/jaygung17/shipping-service:latest 

# export PAT_GITHUB=personal_access_token
# 2. Login to github
echo $PAT_GITHUB | docker login ghcr.io --username jaygung17 --password-stdin

# 3. Mengunggah image ke GitHub Packages (GitHub Container Registry)
docker push ghcr.io/jaygung17/shipping-service:latest
