FROM node:21.7.2-alpine3.18@sha256:8479752877a30c563ca26e60349be477265f6091ae14f17ba9533020c0224d6c
WORKDIR /usr/src/example-server
COPY package*.json ./
RUN npm ci
COPY . .
USER node
CMD [ "npm", "start" ]
