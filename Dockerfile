FROM node:8
MAINTAINER L. Mangani <lorenzo.mangani@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

ENV VERSION 1091082768

COPY ./app /app
WORKDIR /app
RUN npm install && npm install -g pm2

COPY ./docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]

