#!/bin/bash

mkdir ${HOME}/workspace &&
    mkdir ${HOME}/workspace/greenlobster &&
    git -C ${HOME}/workspace/greenlobster init &&
    git -C ${HOME}/workspace/greenlobster remote add origin git@github.com:desertedscorpion/greenlobster.git &&
    ln --symbolic --force /opt/greenlobster/bin/post-commit.sh ${HOME}/workspace/greenlobster/.git/hooks/post-commit &&
    true