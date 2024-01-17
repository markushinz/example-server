FROM node:21.6.0-alpine3.18@sha256:d5759af7e7ff1b9a4ba08acd2830c99021ba406f105b0ab1f561bc54a68c19d5
WORKDIR /usr/src/example-server
COPY package*.json ./
RUN npm ci
COPY . .
USER node
CMD [ "npm", "start" ]
