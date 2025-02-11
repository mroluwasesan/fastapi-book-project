#!/bin/bash
set -e

# Set the project directory
PROJECT_DIR="/home/${DEPLOY_USER}/fastapi-book-project"

# Create the project directory if it doesn't exist
mkdir -p "$PROJECT_DIR"

# Change to the project directory
cd "$PROJECT_DIR"

# Clone the repository if it doesn't exist
if [ ! -d .git ]; then
  git clone https://github.com/mroluwasesan/fastapi-book-project.git .
fi

# Pull the latest code
git pull origin main

# Build and restart Docker container
docker compose down
docker compose up -d --build