FROM node:23.1.0-alpine3.19@sha256:befa90e43121e3c38c1e6bc32dcbb3c4bf5a0a66626355d893fc5f7a51653a59
WORKDIR /usr/src/example-server
COPY package*.json ./
RUN npm ci
COPY . .
USER node
CMD [ "npm", "start" ]
