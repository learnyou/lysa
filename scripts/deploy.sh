#!/bin/bash

deploy_server() {
  # $1 is dirname
  # $2 is filename
  openssl aes-256-cbc -K $encrypted_6d2a7d4982c7_key -iv $encrypted_6d2a7d4982c7_iv -in lysa_rsa.enc -out lysa_rsa -d
  chmod 600 lysa_rsa
  ssh-keyscan -t rsa,dsa -H $HOST 2>&1 | tee -a $HOME/.ssh/known_hosts
  ssh -i lysa_rsa $USER@$HOST "mkdir -p $1" || exit 1
  scp -i lysa_rsa book/lysa.pdf $USER@$HOST:$1/$2 || exit 1
  echo "http://dtscode.io/~lysa/$1/$2"
}

if [[ $TRAVIS_PULL_REQUEST == "false" ]]; then
  if [[ $TRAVIS_BRANCH == "master" ]]; then
    if [[ $TRAVIS_TAG == "" ]]; then
      >&2 echo "Commit to master branch is not tagged."
      exit 1
    fi
    DIRNAME=public_html/master
    FILENAME=lysa-$TRAVIS_TAG.pdf
    deploy_server $DIRNAME $FILENAME
  else
    DIRNAME=public_html/$TRAVIS_BRANCH
    FILENAME=lysa-$TRAVIS_BUILD_ID.pdf
    deploy_server $DIRNAME $FILENAME
  fi
else
  FILENAME=lysa-$TRAVIS_BUILD_ID.pdf
  curl --upload-file book/lysa.pdf https://transfer.sh/$FILENAME || exit 1
fi
