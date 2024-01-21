# Using python base image slim buster for better perfomance
FROM python:3.9-slim-buster

# Prevents python buffering stdout and stderr
ENV PYTHONUNBUFFERED 1

# Prevents python from writing .pyc files to disc
ENV PYTHONDONTWRITEBYTECODE 1

# Setting up the working directory
WORKDIR /app

# Copies files and directories from current directory to WORKDIR
COPY . /app/

# Grant execution permitions to the scripts
RUN chmod +x /app/start.sh /app/wait-for-it.sh

# Install system dependencies
RUN apt-get update \
    && apt-get install -y libgdal-dev libpq-dev \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Install dependencies
COPY requirements.txt /app/
RUN pip install -r requirements.txt