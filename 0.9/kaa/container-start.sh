#!/bin/bash

touch /var/log/kaa/kaa-node.log;

. /kaa/configure-kaa.sh &&
echo "Kaa configured! Starting service..." &&
service kaa-node start &
. /kaa/tail-node.sh

/bin/bash