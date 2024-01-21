# GeoAppTaskFractalNetworks

GeoApp is a simple Django application with PostGIS support containerized using Docker, created to fulfill the task from Fractal Networks.

## Prerequisites

Ensure you have Docker installed on your machine. If not, you can download and install it from [Docker's official website](https://www.docker.com/get-started).

## Getting Started

1. **Clone the Repository:**

    ```bash
    git clone https://github.com/AghastyGD/GeoAppTaskFractalNetworks
    ```

2. **Navigate to the Project Directory:**

    ```bash
    cd GeoAppTaskFractalNetworks
    ```

3. **Create a `.env` File:**

    Create a `.env` file in the root of the project with the following environment variables:

    ```env
    DB_NAME=geospace
    DB_USER=postgres
    DB_PASSWORD=1234
    ```

4. **Build and Run the Docker Containers:**

    ```bash
    docker-compose up --build
    ```

5. **Access the Django Application:**

    Open your web browser and go to [http://localhost:8000/](http://localhost:8000/) to access the GeoApp.

## Scripts

- `start.sh`: This script ensures the PostgreSQL database is ready before starting the Django application. It incorporates the `wait-for-it.sh` script to handle the synchronization.

## Additional Details

- **Libraries Installed:**
    - `libgdal`: This library is required for GeoDjango to support geographic data.
    - `libpq`: It is the PostgreSQL client library, necessary for interfacing with the PostgreSQL database.