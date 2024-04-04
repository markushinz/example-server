FROM node:21.7.2-alpine3.18@sha256:6535f01a525834eba6f1e466d04d59ca48a2f6c53312939d4c09e184e0b6f50c
WORKDIR /usr/src/example-server
COPY package*.json ./
RUN npm ci
COPY . .
USER node
CMD [ "npm", "start" ]
