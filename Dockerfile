FROM debian:9
MAINTAINER L. Mangani <lorenzo.mangani@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

ENV VERSION 1091082768

COPY ./app /app
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash - \
 && apt-get install -y nodejs \
 && cd /app && npm install && npm install -g pm2

COPY ./docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]

