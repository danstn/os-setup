#!/bin/bash
set -x

uid=`logname`
gid=`logname`
MOUNT_POINT=/home/$uid

mount -t vboxsf -o uid=$uid,gid=$gid vbox-dev $MOUNT_POINT/vbox-dev
mount -t vboxsf -o uid=$uid,gid=$gid vbox-share $MOUNT_POINT/vbox-share
