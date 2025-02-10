#!/bin/bash

# Determine which service to run based on environment variable or argument
SERVICE=${1:-python}  # Default to python if no argument provided

case $SERVICE in
    python)
        echo "Starting Python service..."
        cd python && poetry install && poetry run uvicorn src.main:app --host 0.0.0.0 --port 8000 --reload
        ;;
    go)
        echo "Starting Go service..."
        cd go && go run cmd/main.go
        ;;
    *)
        echo "Invalid service specified. Use 'python' or 'go'"
        exit 1
        ;;
esac 