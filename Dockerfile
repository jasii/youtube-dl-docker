FROM lsiobase/alpine.python3:3.8
WORKDIR /youtube-dl
RUN pip3 install --upgrade pip && \
    pip3 install --upgrade youtube-dl
COPY --chown=abc:abc start.sh .
RUN chmod +x ./start.sh

ENTRYPOINT ["./start.sh"]
