#!/bin/sh
echo "Pushing..."
git add .
git commit -m "updating plots"
git remote add virtual https://${GITHUB_TOKEN}@github.com/joelibaceta/hacktoberfest-2019.git
git pull virtual master
git push -u -f virtual images