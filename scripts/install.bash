#!/bin/bash
# makes sure the folder containing the script will be the root folder
cd "$(dirname "$0")" || exit

echo "🛑  Cleaning ALL Nexter node_modules"
rm -rfv ../frontend/agency-static-website/node_modules

echo "🔧  Installing ALL Nexter"
npm --prefix ../frontend/agency-static-website install
