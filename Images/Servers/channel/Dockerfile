FROM node:16-alpine

RUN apk update && apk add git

RUN yarn global add miniflare

WORKDIR /app

RUN git clone https://github.com/snackabra/snackabra-channelserver.git .

COPY entrypoint.sh /

COPY wrangler.toml /app/wrangler.toml

RUN ["chmod", "+x", "/entrypoint.sh"]

ENTRYPOINT ["/entrypoint.sh"]

EXPOSE 4001
