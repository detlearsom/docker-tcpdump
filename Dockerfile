FROM alpine:3.8

RUN apk add --no-cache tcpdump

VOLUME  [ "/data" ]

CMD [ "-C", "1000", "-W", "100", "-v", "-w", "/data/dump" ]
ENTRYPOINT [ "/usr/sbin/tcpdump" ]
