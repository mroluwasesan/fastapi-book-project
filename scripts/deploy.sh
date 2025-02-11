#!/bin/bash
set -e

# Navigate to the project directory
cd /home/${DEPLOY_USER}/fastapi-book-project

# Ensure the repository is cloned
if [ ! -d .git ]; then
    git clone https://github.com/mroluwasesan/fastapi-book-project.git . 
fi

# Pull the latest code
git pull origin main

# Build and restart Docker container
docker compose down
docker compose up -d --build