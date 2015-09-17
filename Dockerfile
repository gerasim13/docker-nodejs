FROM alpine
MAINTAINER Pavel Litvinenko <gerasim13@gmail.com>
RUN apk --update add nodejs nodejs-dev build-base && \
    rm -rf /var/cache/apk/* && \
    rm -rf /tmp/*
RUN npm install -g \
    gulp \
    grunt-cli
RUN apk del build-base nodejs-dev && \
    rm -rf /root/.cache/pip/* && \
    rm -rf /var/cache/apk/* && \
    rm -rf /tmp/*
VOLUME /app
WORKDIR /app
CMD ["npm", "run", "start"]
