FROM debian:jessie
MAINTAINER Carles Amigó, fr3nd@fr3nd.net

COPY btsync /usr/bin/btsync
COPY btsync.conf /etc/btsync.conf
RUN mkdir -p /var/run/btsync /var/lib/btsync/sync

# Web GUI
EXPOSE 8888
# Listening port
EXPOSE 55555

VOLUME /var/lib/btsync

ENTRYPOINT ["/usr/bin/btsync"]
CMD ["--config", "/etc/btsync.conf", "--nodaemon"]
