FROM lsiobase/alpine:3.10

RUN set -xe \
    && apk add --no-cache ca-certificates \
                          ffmpeg \
                          openssl \
                          python3 \
    && pip3 install youtube-dl

WORKDIR /data

COPY start.sh /start.sh

ENTRYPOINT ["/bin/sh", "start.sh"]
