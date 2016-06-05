#!/bin/bash

(gpg --allow-secret-key --import /opt/greenlobster/private/secret.key || true ) &&
    (gpg2 --allow-secret-key --import /opt/greenlobster/private/secret.key || true ) &&
    gpg --import-ownertrust /opt/greenlobster/private/owner.trust &&
    true