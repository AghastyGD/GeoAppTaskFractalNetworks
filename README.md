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

## Running Tests

To run tests for the GeoApp, execute the following command:

```bash
docker-compose exec web python manage.py test
```

This command will run the Django test suite, including any tests you've added for your models or other components.

## Assumptions and Decisions:**
- **Database Connection:** The application assumes a PostgreSQL database with PostGIS support. Adjustments may be needed for different database systems.

- **Security:** The use of environment variables for sensitive information, such as database credentials, was chosen to enhance security.

- **Bonus Feature:** The GeoApp includes a simple Django model that utilizes PostGIS features, and a corresponding test to validate its functionality as a bonus feature.

## Additional Details

- **Libraries Installed:**
    - `libgdal-dev`: This library is required for GeoDjango to support geographic data.
    - `libpq-dev`: It is the PostgreSQL client library, necessary for interfacing with the PostgreSQL database.