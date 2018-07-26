FROM alpine:3.8
# Previous maintainer: Johannes 'fish' Ziemke <docker@freigeist.org>
# Previous maintainer: Bertrand Roussel <bertrand.roussel@cor-net.org>

VOLUME  [ "/data" ]
RUN apk add --no-cache tcpdump coreutils

CMD [ "-C", "1000", "-W", "100", "-v", "-w", "/data/dump" ]
ENTRYPOINT [ "/usr/sbin/tcpdump" ]
