#!/bin/bash
set -e
env
#git remote remove origin
git config --global user.email "travis@travis-ci.org"
git config --global user.name "Travis CI"
git remove remote origin
git remote add origin https://${GH_TOKEN}@github.com/chilanti/homebrew-testmcformula.git
#git clone https://github.com/chilanti/homebrew-testmcformula.git
git checkout -b test${TRAVIS_BUILD_NUMBER}
#cp ../testfile.txt .
git add testfile.txt
git commit -m "Travis build: $TRAVIS_BUILD_NUMBER"
git push --set-upstream origin test${TRAVIS_BUILD_NUMBER}