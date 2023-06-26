#!/usr/bin/env bash
apt-get install git
git config --global init.defaultBranch main

USER=git
HOST=github.com
ORG=Tagl
REPO=gradescope_problemtools
BRANCH=main
GIT_URL="https://$HOST/$ORG/$REPO.git"

pushd /autograder/source
# Fetch the version of the autograder
git init .
git remote add -t \* -f origin $GIT_URL
git checkout -f $BRANCH
popd

cp /autograder/source/run_autograder /autograder/run_autograder

. /autograder/source/extra_setup.sh
