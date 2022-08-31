FROM alpine:3.14.2

ENV HOST="0.0.0.0"

RUN apk upgrade && apk update && \
  apk add curl nodejs && \
  curl -L https://www.npmjs.com/install.sh | sh && \
  npm install -g yarn

WORKDIR /var/www/html

EXPOSE 8080

ENTRYPOINT yarn install && yarn serve
