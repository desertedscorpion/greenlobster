#!/bin/bash

export PATH=${PATH}:/opt/greenlobster/bin &&
    init-ssh.sh &&
    init-git.sh &&
    init-gpg.sh &&
    init-pass.sh &&
    init-workspace.sh &&
    node /opt/greenlobster/c9sdk/server.js --listen 0.0.0.0 -w ${HOME}/workspace -p 8080 --auth ${USER}:${USER} &&
    true
