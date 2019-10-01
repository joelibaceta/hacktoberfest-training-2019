#!/bin/sh
echo "Pushing..."
git add .
git commit -m "updating plots"
git remote add other https://${GITHUB_TOKEN}@github.com/joelibaceta/hacktoberfest-2019.git
git pull other master
git push -u -f other images