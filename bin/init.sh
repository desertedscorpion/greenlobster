#!/bin/bash


init-ssh.sh &&
init-git.sh &&
init-gpg.sh &&
pass init ${PASS_GPG_KEY_ID} &&
pass git init &&
pass git remote add origin ${PASS_GIT_URL} &&
pass git fetch origin master &&
pass git rebase origin/master &&
ln --symbolic --force /opt/greenlobster/bin/post-commit.sh ${HOME}/.password-store/.git/hooks/post-commit &&
git -C ${HOME}/bin pull origin develop &&
${HOME}/bin/setup.sh &&
node /opt/greenlobster/c9sdk/server.js --listen 0.0.0.0 -w ${HOME}/workspace -p 8080 --auth ${USER}:${USER} &&
true
