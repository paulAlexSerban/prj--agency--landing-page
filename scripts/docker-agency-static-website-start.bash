#!/bin/bash
# makes sure the folder containing the script will be the root folder
cd "$(dirname "$0")" || exit

echo "🏗️  BUILD Agency Static Website Website content"
bash frontend-agency-static-website-build.bash development

echo "🟢  START 🐳  Docker Agency Static  Website server conatiner "
docker-compose --env-file ../config.env \
  --file ../docker/docker-compose.traefik-proxy.yml \
  --file ../docker/docker-compose.agency-static-website.yml \
  up --detach --build