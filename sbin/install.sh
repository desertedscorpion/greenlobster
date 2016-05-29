#!/bin/bash

chmod 0500 /opt/greenlobster/sbin/* &&
chmod 0555 /opt/greenlobster/bin/* &&
dnf update --assumeyes &&
dnf install --assumeyes git make python tar which bzip2 ncurses gmp-devel mpfr-devel libmpc-devel glibc-devel flex bison glibc-static zlib-devel gcc gcc-c++ nodejs npm sudo pass gnupg gnupg2 &&
dnf update --assumeyes &&
dnf clean all &&
    mkdir /opt/greenlobster/c9sdk &&
    chmod 0555 /opt/greenlobster/c9sdk &&
    git -C /opt/greenlobster/c9sdk init &&
    git -C /opt/greenlobster/c9sdk remote add origin git://github.com/c9/core.git &&
    git -C /opt/greenlobster/c9sdk pull origin master &&
    /opt/greenlobster/c9sdk/scripts/install-sdk.sh &&
    adduser --create-home emory &&
    echo "emory ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/emory &&
chmod 0440 /etc/sudoers.d/emory &&

    su --login emory /opt/greenlobster/bin/install.sh &&
    true
