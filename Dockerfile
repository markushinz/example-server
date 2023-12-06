FROM node:21.4.0-alpine3.18@sha256:9bfaec4816d320226b1533abd5d22d6a888105ee502b820676736de99a198408
WORKDIR /usr/src/example-server
COPY package*.json ./
RUN npm ci
COPY . .
USER node
CMD [ "npm", "start" ]
