#!/bin/bash
# makes sure the folder containing the script will be the root folder
cd "$(dirname "$0")" || exit

echo " 🛑  🐳  STOP Nginx Agency Static Website docker containers"
docker compose --env-file ../config.env \
  --file ../docker/docker-compose.agency-static-website.yml \
  down --volumes --rmi all
