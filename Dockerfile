FROM node:10

WORKDIR /src

ADD package.json .
ADD package-lock.json .
RUN npm install
ADD . .

ENTRYPOINT node scripts/start.js
