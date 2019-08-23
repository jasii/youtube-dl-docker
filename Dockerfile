FROM lsiobase/python
WORKDIR /data
RUN pip3 install --upgrade pip && \
    pip3 install --upgrade youtube-dl ffmpeg

ENTRYPOINT ["youtube-dl"]
