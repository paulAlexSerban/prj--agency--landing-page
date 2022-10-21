#!/bin/bash
# makes sure the folder containing the script will be the root folder
cd "$(dirname "$0")" || exit

echo "🛑  Cleaning ALL Agency node_modules"
rm -rfv ../frontend/agency-static-website/node_modules

echo "🔧  Installing ALL Agency"
npm --prefix ../frontend/agency-static-website install
