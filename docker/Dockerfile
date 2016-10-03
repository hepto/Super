FROM debian:jessie

RUN apt-get update && apt-get -y --no-install-recommends install \
    ca-certificates \
    curl \
    git

RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
RUN curl -o /usr/local/bin/gosu -SL "https://github.com/tianon/gosu/releases/download/1.4/gosu-$(dpkg --print-architecture)" \
    && curl -o /usr/local/bin/gosu.asc -SL "https://github.com/tianon/gosu/releases/download/1.4/gosu-$(dpkg --print-architecture).asc" \
    && gpg --verify /usr/local/bin/gosu.asc \
    && rm /usr/local/bin/gosu.asc \
    && chmod +x /usr/local/bin/gosu

RUN curl -sL https://deb.nodesource.com/setup_6.x | bash -
RUN apt-get install -y --no-install-recommends nodejs
RUN npm install -g cordova ionic
RUN cordova telemetry off

COPY entrypoint.sh /usr/local/bin/entrypoint.sh
COPY ionicserve.sh /usr/local/bin/ionicserve.sh

EXPOSE 8000 35729
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]

WORKDIR /project
CMD ["/usr/local/bin/ionicserve.sh"]