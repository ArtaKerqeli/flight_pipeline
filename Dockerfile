# Use official Python 3.13 image
FROM python:3.13-slim

# Set working directory
WORKDIR /app

# Copy your DBT project into the container
COPY . /app

# Install system dependencies
RUN apt-get update && apt-get install -y git curl && rm -rf /var/lib/apt/lists/*

# Install DBT Databricks adapter
RUN pip install --no-cache-dir dbt-databricks==1.10.10

# Set environment variables for SSL bypass
ENV DATABRICKS_INSECURE=true
ENV PYTHONHTTPSVERIFY=0

# Default command: run DBT debug
CMD ["dbt", "debug"]

