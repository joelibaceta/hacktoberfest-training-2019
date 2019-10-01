#!/bin/sh
echo "Pushing..."
git remote add virtual https://${GITHUB_TOKEN}@github.com/joelibaceta/Hacktoberfest2019.git
git add .
git commit -m "updating plots"
git push virtual master