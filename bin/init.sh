#!/bin/bash

source /opt/greenlobster/private/pass.properties &&
ID_RSA=$(mktemp) &&
sudo cp /opt/greenlobster/private/id_rsa /${ID_RSA} &&
sudo chmod a+r ${ID_RSA} &&
cp ${ID_RSA} ${HOME}/.ssh/id_rsa &&
chmod 0600 ${HOME}/.ssh/id_rsa &&
git config --global user.email "emory.merryman@gmail.com" &&
git config --global user.name "Emory Merryman" &&
SECRET_KEY=$(mktemp) &&
OWNER_TRUST=$(mktemp) &&
sudo cp /opt/greenlobster/private/secret.key ${SECRET_KEY} &&
sudo cp /opt/greenlobster/private/owner.trust ${OWNER_TRUST} &&
sudo chmod a+r ${SECRET_KEY} ${OWNER_TRUST} &&
(gpg --allow-secret-key --import ${SECRET_KEY} || true ) &&
(gpg2 --allow-secret-key --import ${SECRET_KEY} || true ) &&
gpg --import-ownertrust ${OWNER_TRUST} &&
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
