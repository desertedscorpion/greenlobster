#!/bin/bash

export PATH=${PATH}:/opt/greenlobster/bin &&
    install-cloud9.sh &&
    install-ssh.sh &&
    install-workspace.sh &&
    mkdir ${HOME}/bin &&
    chmod 0700 ${HOME}/bin &&
    git -C ${HOME}/bin init &&
    git -C ${HOME}/bin remote add origin git@github.com:desertedscorpion/richcomic.git &&
    ln --symbolic --force /opt/greenlobster/bin/post-commit.sh ${HOME}/bin/.git/hooks/post-commit &&
    true
