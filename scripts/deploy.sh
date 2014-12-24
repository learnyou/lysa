#!/bin/bash
if [ $TRAVIS_BRANCH == "develop" -a $TRAVIS_PULL_REQUEST == "false" ]; then
  openssl aes-256-cbc -K $encrypted_6d2a7d4982c7_key -iv $encrypted_6d2a7d4982c7_iv -in lysa_rsa.enc -out lysa_rsa -d
  chmod 600 lysa_rsa
  ssh-keyscan -t rsa,dsa -H $HOST 2>&1 | tee -a $HOME/.ssh/known_hosts
  scp -i lysa_rsa book/lysa.pdf $USER@$HOST:public_html/lysa-$TRAVIS_BUILD_ID.pdf || exit 1
else
  curl --upload-file book/lysa.pdf https://transfer.sh/lysa-$TRAVIS_COMMIT.pdf || exit 1
fi