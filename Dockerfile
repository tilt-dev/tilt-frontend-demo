FROM node:10

WORKDIR /src

ADD . /src

RUN npm install

ENTRYPOINT node scripts/start.js