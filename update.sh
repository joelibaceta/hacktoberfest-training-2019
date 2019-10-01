#!/bin/sh
echo "Pushing..."
git clone https://joelibaceta:${GITHUB_TOKEN}@github.com/joelibaceta/hacktoberfest-2019.git

cd hacktoberfest-2019
git add .
git commit -m "updating plots" 

git config --global user.name "bot"
git config --global user.email "bot@github.com"

git pull origin gh-pages
git push -u -f origin gh-pages