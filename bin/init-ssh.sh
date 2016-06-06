#!/bin/bash

cp /opt/greenlobster/private.user/id_rsa ${HOME}/.ssh/id_rsa &&
    chmod 0600 ${HOME}/.ssh/id_rsa &&
    true