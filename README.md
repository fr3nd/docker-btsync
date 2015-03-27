# btsync docker image

## Description

BitTorrent Sync by BitTorrent, Inc is a proprietary peer-to-peer file
synchronization tool available for Windows, Mac, Linux, Android, iOS, Windows
Phone, Amazon Kindle Fire and BSD. It can sync files between devices on a
local network, or between remote devices over the Internet via secure,
distributed P2P technology

This image allows you to run btsync in a completelly containerized environment

It also allows to run btsync as a specified user, so all the synced files will
have the specified UID and GID so your local user can modify the synced files

## How to use this image

Run btsync with the same uid and gid as the local user so the files can be
modified directly

```
docker run \
  -p 8888:8888 \
  -p 55555:55555 \
  -h $(hostname) \
  -e BTSYNC_UID=$(id -u) \
  -e BTSYNC_GID=$(id -g) \
  -v ${HOME}/btsync:/home/btsync:rw \
  fr3nd/btsync
```

