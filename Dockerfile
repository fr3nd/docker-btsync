FROM debian:jessie
MAINTAINER Carles Amigó, fr3nd@fr3nd.net

COPY btsync /usr/bin/btsync
COPY btsync.conf /etc/btsync.conf
RUN mkdir -p /var/run/btsync /var/lib/btsync/sync

ENV BTSYNC_UID 1000
ENV BTSYNC_GID 1000

RUN groupadd -g $BTSYNC_GID btsync
RUN useradd -u $BTSYNC_UID -g $BTSYNC_GID --no-create-home --home-dir /home/btsync btsync
RUN mkdir -p /home/btsync
RUN chown btsync:btsync /home/btsync

COPY entrypoint.sh /entrypoint.sh

# Web GUI
EXPOSE 8888
# Listening port
EXPOSE 55555

VOLUME /home/btsync

ENTRYPOINT ["/entrypoint.sh"]
