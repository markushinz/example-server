FROM node:21.7.3-alpine3.18@sha256:7d4f2d7c22e5a9e08aad96880b5862eae2a38b4283443b74a991a01d59ca072b
WORKDIR /usr/src/example-server
COPY package*.json ./
RUN npm ci
COPY . .
USER node
CMD [ "npm", "start" ]
