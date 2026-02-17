#!/bin/bash

# Todo Backend Deployment Script

echo "Building Todo Backend Application..."
./gradlew clean build

if [ $? -ne 0 ]; then
    echo "Build failed!"
    exit 1
fi

echo "Build successful!"
echo ""
echo "Docker deployment options:"
echo ""
echo "Option 1: Build Docker image"
echo "  docker build -t todo-backend:latest ."
echo ""
echo "Option 2: Run with docker-compose"
echo "  docker-compose up -d"
echo ""
echo "Option 3: Run Docker container directly"
echo "  docker run -d -p 8080:8080 --name todo-backend todo-backend:latest"
echo ""
echo "To stop the container:"
echo "  docker stop todo-backend"
echo ""
echo "To view logs:"
echo "  docker logs -f todo-backend"
