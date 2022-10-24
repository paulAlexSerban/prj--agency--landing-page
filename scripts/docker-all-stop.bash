#!/bin/bash
# makes sure the folder containing the script will be the root folder
cd "$(dirname "$0")" || exit

echo " 🛑  🐳  STOP all docker containers"
docker compose --env-file ../config.env \
  --file ../docker/docker-compose.traefik-proxy.yml \
  --file ../docker/docker-compose.agency-static-website.yml \
  --file ../docker/docker-compose.agency-landing-page.yml \
  down
