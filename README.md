# Todo Backend

A fully functional REST API for managing todos built with Spring Boot.

## Features

- Create, read, update, and delete todos
- Full CRUD operations via REST API
- H2 in-memory database
- Spring Data JPA with Hibernate ORM
- CORS enabled for cross-origin requests
- Input validation
- Comprehensive error handling

## Technology Stack

- **Java 17**
- **Spring Boot 4.0.2**
- **Spring Data JPA**
- **Hibernate ORM 7.2.1**
- **H2 Database**
- **Gradle 9.3.0**
- **Tomcat 11.0.15**

## Prerequisites

- Java JDK 17 or higher
- Gradle 9.3.0 (included with project)

## Getting Started

### Building the Project

```bash
./gradlew clean build
```

### Running the Application

```bash
./gradlew bootRun
```

The application will start on `http://localhost:8080`

### Running Tests

```bash
./gradlew test
```

## API Endpoints

Base URL: `http://localhost:8080/api/todos`

### Get all todos
```
GET /api/todos
```
Returns an array of all todos.

### Get a specific todo
```
GET /api/todos/{id}
```
Returns a single todo by ID.

### Create a new todo
```
POST /api/todos
Content-Type: application/json

{
  "title": "Learn Spring Boot",
  "description": "Complete Spring Boot fundamentals",
  "completed": false
}
```

### Update a todo
```
PUT /api/todos/{id}
Content-Type: application/json

{
  "title": "Updated Title",
  "description": "Updated description",
  "completed": true
}
```

### Delete a todo
```
DELETE /api/todos/{id}
```

### Delete all todos
```
DELETE /api/todos
```

### Health check
```
GET /api/todos/health
```

## Project Structure

```
src/
├── main/
│   ├── java/com/example/todo_backend/
│   │   ├── TodoBackendApplication.java    # Main application class
│   │   ├── Todo.java                       # Entity class
│   │   ├── TodoRepository.java             # Data access layer
│   │   └── TodoController.java             # REST controller
│   └── resources/
│       └── application.properties           # Application configuration
└── test/
    └── java/com/example/todo_backend/
        └── TodoBackendApplicationTests.java # Test cases
```

## Sample Requests

### Create a Todo
```bash
curl -X POST http://localhost:8080/api/todos \
  -H "Content-Type: application/json" \
  -d '{
    "title": "Learn Spring Boot",
    "description": "Master Spring Boot framework",
    "completed": false
  }'
```

### Get All Todos
```bash
curl http://localhost:8080/api/todos
```

### Update a Todo
```bash
curl -X PUT http://localhost:8080/api/todos/1 \
  -H "Content-Type: application/json" \
  -d '{
    "title": "Learn Spring Boot (Updated)",
    "description": "Master Spring Boot framework",
    "completed": true
  }'
```

### Delete a Todo
```bash
curl -X DELETE http://localhost:8080/api/todos/1
```

## Deployment

### Docker Deployment

#### Prerequisites
- Docker and Docker Compose installed

#### Build and Run with Docker

1. **Build the application first:**
```bash
./gradlew clean build
```

2. **Build the Docker image:**
```bash
docker build -t todo-backend:latest .
```

3. **Run the container:**
```bash
docker run -d -p 8080:8080 --name todo-backend todo-backend:latest
```

The application will be accessible at `http://localhost:8080`

#### Using Docker Compose

```bash
docker-compose up -d
```

This will build and start the application in a container.

#### View Logs
```bash
docker logs -f todo-backend
```

#### Stop the Container
```bash
docker stop todo-backend
```

#### Remove the Container
```bash
docker rm todo-backend
```

### Automatic Deployment Script

For Linux/Mac:
```bash
chmod +x deploy.sh
./deploy.sh
```

For Windows:
```batch
deploy.bat
```

These scripts will build the application and display Docker deployment options.

### Cloud Deployment Options

#### Heroku
1. Install Heroku CLI
2. Create a Heroku app: `heroku create todo-backend`
3. Deploy: `git push heroku main`

#### AWS
- Use AWS Elastic Beanstalk with Docker
- Or deploy to EC2 with Docker

#### Azure
- Use Azure Container Instances
- Or Azure App Service

#### Google Cloud
- Use Cloud Run or Compute Engine

## Contributing

Contributions are welcome! Please feel free to submit pull requests.

## License

This project is open source and available under the MIT License.

## Author

Developed with Spring Boot
