# Griptape Cloud Local

Quickstart to get a local Griptape Cloud environment up and running.

## Prerequisites
- Docker compose

## Setup
1. Run the `pull_images.sh` script to pull and tag the necessary images.
```bash
./pull_images.sh
```
2. Start the service with docker compose.
```bash
docker compose -f docker-compose.yml up
```
3. Navigate to `localhost:8080` in your browser to access the Griptape Cloud console.
