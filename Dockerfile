FROM node:22.7.0-alpine3.19@sha256:a20e85826910e797a556dc808e070c582546786be9e82c535ecdacd2358e2a27
WORKDIR /usr/src/example-server
COPY package*.json ./
RUN npm ci
COPY . .
USER node
CMD [ "npm", "start" ]
