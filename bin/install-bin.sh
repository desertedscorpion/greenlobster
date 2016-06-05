#!/bin/bash

mkdir ${HOME}/bin &&
    chmod 0700 ${HOME}/bin &&
    ln --symbolic-force /opt/greenlobster/bin/post-commit.sh ${HOME}/bin/post-commit &&
    true