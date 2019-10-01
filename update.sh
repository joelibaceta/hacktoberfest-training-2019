#!/bin/sh
echo "Pushing..."
git add .
git commit -m "updating plots"
git remote add virtual https://joelibaceta:${GITHUB_TOKEN}@github.com/joelibaceta/hacktoberfest-2019.git
git pull virtual gh-pages
git push -u -f virtual gh-pages