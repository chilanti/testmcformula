#!/bin/bash
mkdir test
cd test
git clone https://github.com/chilanti/homebrew-testmcformula.git
git checkout -b testrelease
cp ../testfile.txt .
git add .
git commit -m "Travis build: $TRAVIS_BUILD_NUMBER"
git remote remove origin
git remote add origin https://${GH_TOKEN}@github.com/chilanti/homebrew-testmcformula.git
git push --set-upstream origin testrelease