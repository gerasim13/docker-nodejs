FROM gliderlabs/alpine
MAINTAINER Pavel Litvinenko <gerasim13@gmail.com>
RUN apk --update add curl nodejs nodejs-dev build-base
RUN npm install -g gulp grunt-cli
RUN apk del build-base nodejs-dev && \
    rm -rf /root/.cache/pip/* && \
    rm -rf /var/cache/apk/* && \
    rm -rf /tmp/*
VOLUME /app
WORKDIR /app
CMD ["npm", "run", "start"]
