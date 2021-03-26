FROM node:10

WORKDIR /app

ADD package.json package.json
ADD yarn.lock yarn.lock
RUN yarn install

ADD tsconfig.json tsconfig.json
ADD src src

ENTRYPOINT node_modules/.bin/tsc --watch --preserveWatchOutput
