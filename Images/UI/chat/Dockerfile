FROM node:16-alpine

RUN apk update && apk add git


RUN yarn global add serve

WORKDIR /app

RUN git clone https://github.com/snackabra/snackabra-webclient.git .

COPY entrypoint.sh /

RUN rm yarn.lock

RUN echo REACT_APP_ROOM_SERVER=http://localhost:4001 >> "/app/.env"
RUN echo REACT_APP_ROOM_SERVER_WS=ws://localhost:4001 >> "/app/.env"
RUN echo REACT_APP_STORAGE_SERVER=http://localhost:4000 >> "/app/.env"

RUN yarn install

RUN npm run build

RUN ["chmod", "+x", "/entrypoint.sh"]

ENTRYPOINT ["/entrypoint.sh"]

EXPOSE 3000
