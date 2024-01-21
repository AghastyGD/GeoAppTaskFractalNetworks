# GeoApp

GeoApp is a simple Django application with PostGIS support containerized using Docker to submit the task from Fractal Networks

## Prerequisites

- Docker installed on your machine

## Getting Started

1. Clone the repository:

    ```bash
    git clone https://github.com/your-username/geoapp.git
    ```

2. Navigate to the project directory:

    ```bash
    cd geoapp
    ```

3. Create a `.env` file in the root of the project with the following environment variables:

    ```env
    DB_NAME=geospace
    DB_USER=postgres
    DB_PASSWORD=1234
    ```

4. Build and run the Docker containers:

    ```bash
    docker-compose up --build
    ```

5. Access the Django application at [http://localhost:8000/](http://localhost:8000/)

## Scripts

- `start.sh`: Script to start the Django application after waiting for the PostgreSQL database to be ready.

## Acknowledgments

- [Django](https://www.djangoproject.com/)
- [PostGIS](https://postgis.net/)
- [Docker](https://www.docker.com/)
# GeoAppTaskFractalNetworks
