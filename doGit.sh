#!/bin/bash
set -e
env
mkdir ./mctest
cd mctest
git remote remove origin
git remote add origin https://${GH_TOKEN}@github.com/chilanti/homebrew-testmcformula.git
git clone https://github.com/chilanti/homebrew-testmcformula.git
git checkout -b test${TRAVIS_BUILD_NUMBER}
cp ../testfile.txt .
git add .
git commit -m "Travis build: $TRAVIS_BUILD_NUMBER"
git push --set-upstream origin test${TRAVIS_BUILD_NUMBER}