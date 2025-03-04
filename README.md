# Griptape Cloud Local

Quickstart to get a local Griptape Cloud environment up and running.

## Prerequisites
- Docker compose

## Setup
2. Run the `pull_images.sh` script to pull and tag the necessary images.
```bash
./pull_images.sh
```

3. Start the service with docker compose.
```bash
docker compose -f docker-compose.yml up
```

4. Navigate to `localhost:8080` in your browser to access the Griptape Cloud console.
