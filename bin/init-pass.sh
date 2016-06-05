#!/bin/bash

pass init 2D2D81DA &&
    pass git init &&
    pass git remote add origin git@github.com:AFnRFCb7/lanterngold.git &&
    pass git fetch origin master &&
    pass git rebase origin/master &&
    ln --symbolic --force /opt/greenlobster/bin/post-commit.sh ${HOME}/.password-store/.git/hooks/post-commit &&
    true