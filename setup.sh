#!/usr/bin/env bash

apt-get install git

USER=git
HOST=github.com
ORG=Tagl
REPO=gradescope_problemtools
BRANCH=main
GIT_URL="$USER@$HOST:$ORG/$REPO.git"

pushd /autograder/source
# Fetch the version of the autograder
git init .
git remote add -t \* -f origin $GIT_URL
git checkout $BRANCH
popd

. ./extra_setup.sh
