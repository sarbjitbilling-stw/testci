#!/bin/sh

setup_git() {
  git config --global user.email "travis@travis-ci.org"
  git config --global user.name "travis ci"
}

commit_files() {
  echo ===== sb before checkout =====
  ls -ltra
  git checkout -b gh-pages

  echo ===== sb after gh-pages checkout =====
  ls -ltra

  git add --force platforms/android/build/outputs/apk

  git commit --message "travis build: $TRAVIS_BUILD_NUMBER"
}

upload_files() {
  echo ===== sb upload files =====
  git remote add origin-ghp https://sarbjitbilling:${GITHUB_TOKEN}@github.com/sarbjitbilling/testciapp3.git
  echo ===== sb ght ${GITHUB_TOKEN} =====
  git status
  git remote -v
  git push --set-upstream origin-ghp gh-pages --force
}

setup_git
commit_files
upload_files
