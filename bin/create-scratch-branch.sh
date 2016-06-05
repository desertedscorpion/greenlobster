#!/bin/bash

PARENT_BRANCH="${1}" &&
    CHILD_BRANCH="${2}" &&
    git fetch origin "${PARENT_BRANCH}" &&
    git checkout -b scratch_$(cat /dev/urandom | tr -dc 'A-Z0-9' | fold -w 4 | head -n 1)_$(echo ${CHILD_BRANCH} | sed -e 's/ /_/g') &&
    true