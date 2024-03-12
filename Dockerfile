FROM node:21.7.1-alpine3.18@sha256:a0b2286b29138d5265edb6ee1b7e48579d705bf93fd6e0ce8f56e87fbb5136ef
WORKDIR /usr/src/example-server
COPY package*.json ./
RUN npm ci
COPY . .
USER node
CMD [ "npm", "start" ]
