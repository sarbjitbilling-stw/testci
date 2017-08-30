#!/bin/sh

setup_git() {
  git config --global user.email "travis@travis-ci.org"
  git config --global user.name "travis ci"
}

commit_files() {
  echo ===== sb before checkout =====
  ls -ltra

  echo ===== sb checkout =====
  git checkout -b gh-pages

  echo ===== sb after checkout =====
  ls -ltra

  echo ===== sb add apk =====
  git add platforms/android/build/outputs/apk --force

  git commit --message "travis build: $TRAVIS_BUILD_NUMBER"
}

upload_files() {
  echo ===== sb add origin =====
  git remote add origin-ghp https://sarbjitbilling-stw:${GITHUB_TOKEN}@github.com/sarbjitbilling-stw/testci.git

  echo ===== sb echo GITHUB_TOKEN =====
  echo ${GITHUB_TOKEN}

  echo ===== sb status =====
  git status

  echo ===== sb remote =====
  git remote -v

  echo ===== sb push to remote =====
  git push --set-upstream origin-ghp gh-pages --force
}

setup_git
commit_files
upload_files
