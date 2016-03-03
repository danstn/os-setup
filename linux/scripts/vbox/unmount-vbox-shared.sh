#!/bin/bash
set -x

MOUNT_POINT=/home/`logname`

umount $MOUNT_POINT/vbox-dev
umount $MOUNT_POINT/vbox-share

