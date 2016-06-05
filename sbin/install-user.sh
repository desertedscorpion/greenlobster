#!/bin/bash

dnf install --assumeyes shadow-utils coreutils &&
    adduser --create-home --uid 501 --gid 20 emory &&
    echo "emory ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/emory &&
    chmod 0440 /etc/sudoers.d/emory &&
    true
