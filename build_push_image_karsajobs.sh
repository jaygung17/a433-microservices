#!/bin/bash

# 1. Perintah untuk membuat Docker image dari Dockerfile.

docker build -t karsajobs-update:latest .

# 2. Login ke GitHub Packages
# ubah tag dan nama, sesuai penamaan github package
docker tag karsajobs-update:latest ghcr.io/jaygung17/karsajobs-update:latest
echo $GITHUB_PAT | docker login ghcr.io --username jaygung17 --password-stdin

# 3. Mengunggah image ke GitHub Packages (GitHub Container Registry)
docker push ghcr.io/jaygung17/karsajobs-update:latest

