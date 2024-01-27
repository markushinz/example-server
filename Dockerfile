FROM node:21.6.0-alpine3.18@sha256:1df0c5dfdf73c7ecbcd7fe4b1cd3ce6a0c63b447aa1b6c177fe20575c59f7b72
WORKDIR /usr/src/example-server
COPY package*.json ./
RUN npm ci
COPY . .
USER node
CMD [ "npm", "start" ]
