#!/bin/sh
echo "Pushing..."
git remote remove origin
git remote add origin https://${GITHUB_TOKEN}@github.com/joelibaceta/hacktoberfest-2019.git
git add .
git commit -m "updating plots"
git pull origin master
git push origin master