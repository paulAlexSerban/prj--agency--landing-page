#!/bin/bash
# makes sure the folder containing the script will be the root folder
cd "$(dirname "$0")" || exit

echo "📦 Package Frontend Agency Landing Page"
mkdir -p ../package/agency-landing-page
cp -rfv ../frontend/agency-landing-page/dist/* ../package/agency-landing-page