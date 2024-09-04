FROM node:22.8.0-alpine3.19@sha256:ef7b4bbf1eefd881fa3c30c296f29f07f33ea9ec6a8ab7e57778ab2e24d7959d
WORKDIR /usr/src/example-server
COPY package*.json ./
RUN npm ci
COPY . .
USER node
CMD [ "npm", "start" ]
