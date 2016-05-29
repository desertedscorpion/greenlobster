#!/bin/bash

curl -L https://raw.githubusercontent.com/c9/install/master/install.sh | bash &&
mkdir ${HOME}/.ssh &&
chmod 0700 ${HOME}/.ssh &&
cp /opt/greenlobster/lib/config ${HOME}/.ssh/config &&
chmod 0600 ${HOME}/.ssh/config &&
mkdir ${HOME}/workspace &&
mkdir ${HOME}/bin &&
chmod 0700 ${HOME}/bin &&
git -C ${HOME}/bin init &&
git -C ${HOME}/bin remote add origin git@github.com:desertedscorpion/richcomic.git &&
ln --symbolic --force /opt/greenlobster/bin/post-commit.sh ${HOME}/bin/.git/hooks/post-commit &&
true
