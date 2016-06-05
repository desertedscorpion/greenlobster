#!/bin/bash

mkdir ${HOME}/bin &&
    chmod 0700 ${HOME}/bin &&
    ln --symbolic-force /opt/greenlobster/bin/post-commit.sh ${HOME}/bin/post-commit &&
    ln --symbolic-force /opt/greenlobster/bin/create-scratch-branch.sh ${HOME}/bin/create-scratch-branch &&
    true