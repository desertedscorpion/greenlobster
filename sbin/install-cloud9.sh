#!/bin/bash

dnf install --assumeyes git make python tar which bzip2 ncurses gmp-devel mpfr-devel libmpc-devel glibc-devel flex bison glibc-static zlib-devel gcc gcc-c++ node &&
    mkdir /opt/greenlobster/c9sdk &&
    chmod 0555 /opt/greenlobster/c9sdk &&
    git -C /opt/greenlobster/c9sdk init &&
    git -C /opt/greenlobster/c9sdk remote add origin git://github.com/c9/core.git &&
    git -C /opt/greenlobster/c9sdk pull origin master &&
    /opt/greenlobster/c9sdk/scripts/install-sdk.sh &&
    true