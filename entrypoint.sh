#!/bin/sh

set -e

usermod -u $BTSYNC_UID -g $BTSYNC_GID btsync

mkdir -p /home/btsync/.sync
chown btsync:btsync -R /home/btsync

if [ -z "$@" ]; then
  exec su - btsync -c "/usr/bin/btsync --config /etc/btsync.conf --nodaemon"
else
  exec su - btsync -c "$@"
fi
