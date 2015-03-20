# btsync docker image

## Description

BitTorrent Sync by BitTorrent, Inc is a proprietary peer-to-peer file
synchronization tool available for Windows, Mac, Linux, Android, iOS, Windows
Phone, Amazon Kindle Fire and BSD. It can sync files between devices on a
local network, or between remote devices over the Internet via secure,
distributed P2P technology

This image allows you to run btsync in a completelly containerized environment

## How to use this image

Run btsync with the default configuration:

```
docker run \
  -p 8888:8888 \
  -p 55555:55555 \
  -v /var/lib/btsync/sync:/var/lib/btsync/sync:rw \
  fr3nd/btsync
```

