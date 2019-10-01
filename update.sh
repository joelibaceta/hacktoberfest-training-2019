#!/bin/sh
echo "Pushing..."
git add .
git commit -m "updating plots"
git pull origin gh-pages
git remote rm origin
git config --global user.name "bot"
git config --global user.email "bot@github.com"
git remote add origin https://joelibaceta:${GITHUB_TOKEN}@github.com/joelibaceta/hacktoberfest-2019.git
git pull origin gh-pages
git push -u -f origin gh-pages