FROM ubuntu:latest

ENV TERRARIA_VERSION 1308

ADD http://terraria.org/server/terraria-server-linux-$TERRARIA_VERSION.tar.gz

RUN mkdir /srv && \
    tar -xzf terraria-server-linux-$TERRARIA_VERSION.tar.gz -C /srv

WORKDIR /srv

ENTRYPOINT [""]
