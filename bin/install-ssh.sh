#!/bin/bash

mkdir ${HOME}/.ssh &&
    chmod 0700 ${HOME}/.ssh &&
    cp /opt/greenlobster/lib/config ${HOME}/.ssh/config &&
    chmod 0600 ${HOME}/.ssh/config &&
    true