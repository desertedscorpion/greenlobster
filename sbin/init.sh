#!/bin/bash

mkdir /opt/greenlobster/private.user &&
    cp /opt/greenlobster/private/id_rsa /opt/greenlobster/private/secret.key /opt/greenlobster/private/owner.trust /opt/greenlobster/private.user &&
    chmod 0555 /opt/greenlobster/private.user &&
    chmod 0444 /opt/greenlobster/private.user/* &&
    su --login emory /opt/greenlobster/bin/init.sh  &&
    true
