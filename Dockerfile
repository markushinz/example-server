FROM node:22.2.0-alpine3.19@sha256:e6d449575e1696cbaee6ec1adce2ac220dc138c4b7bc053379b53c68a6bd2799
WORKDIR /usr/src/example-server
COPY package*.json ./
RUN npm ci
COPY . .
USER node
CMD [ "npm", "start" ]
