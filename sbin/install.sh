#!/bin/bash

dnf update --assumeyes &&
    dnf install --assumeyes dnf coreutils util-linux &&
    chmod 0500 /opt/greenlobster/sbin/* &&
    chmod 0555 /opt/greenlobster/bin/* &&
    export PATH=${PATH}:/opt/greenlobster/sbin &&
    install-cloud9.sh &&
    install-user.sh &&
    su --login emory /opt/greenlobster/bin/install.sh &&
    dnf update --assumeyes &&
    dnf clean all &&
    true
