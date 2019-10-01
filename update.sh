#!/bin/sh
echo "Pushing..."
git add .
git commit -m "updating plots"
git remote remove origin
git remote add origin https://${GITHUB_TOKEN}@github.com/joelibaceta/hacktoberfest-2019.git
git pull origin master
git push -u -f origin images