#!/bin/bash

# Run the wait-for-it script to wait the database connection first
./wait-for-it.sh postgres_db:5432

# And then start app
python manage.py makemigrations --no-input
python manage.py migrate --no-input

python manage.py runserver 0.0.0.0:8000