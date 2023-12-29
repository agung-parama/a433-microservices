#!/bin/bash

# Step 1: Build Docker image for frontend
docker build -t docker.pkg.github.com/agung-parama/karsajobs/karsajobs-ui:latest -f Dockerfile .

# Step 2: Login to GitHub Packages (replace <username-github> and <token>)
# Note: Replace <token> with a GitHub Personal Access Token with read:packages, write:packages, and delete:packages scopes
# docker login docker.pkg.github.com -u agung-parama -p <REDACTED>

# Step 3: Push Docker image to GitHub Packages
docker push docker.pkg.github.com/agung-parama/karsajobs/karsajobs-ui:latest