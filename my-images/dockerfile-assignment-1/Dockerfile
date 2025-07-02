FROM node:24-alpine3.21

EXPOSE 3000

RUN apk add --update tini && mkdir -p /usr/src/app

WORKDIR /usr/src/app
COPY package.json package.json

RUN npm install && npm cache verify

COPY . .

CMD ["tini", "--", "node", "./bin/www"]
