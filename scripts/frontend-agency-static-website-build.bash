#!/bin/bash
# makes sure the folder containing the script will be the root folder
cd "$(dirname "$0")" || exit

echo "Building Agency Static Website"
npm --prefix ../frontend/agency-static-website run build