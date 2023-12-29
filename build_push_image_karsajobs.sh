#!/bin/bash

# Step 1: Build Docker image for backend
docker build -t docker.pkg.github.com/agung-parama/karsajobs/karsajobs-be:latest -f Dockerfile .

# Step 2: Login to GitHub Packages
# Note: Replace <token> with a GitHub Personal Access Token with read:packages, write:packages, and delete:packages scopes
 docker login docker.pkg.github.com -u agung-parama -p <REDACTED>

# Step 3: Push Docker image to GitHub Packages
docker push docker.pkg.github.com/agung-parama/karsajobs/karsajobs-be:latest