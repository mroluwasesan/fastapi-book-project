#!/bin/bash
set -e

# Pull latest code
cd /home/${DEPLOY_USER}/fastapi-book-project
git pull origin main

# Build and restart Docker container
docker compose down
docker compose up -d --build