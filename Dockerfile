FROM node:21.7.2-alpine3.18@sha256:d3398787ac2f4d83206293be6b41371a628383eadaf7fb108faab63d13c5469e
WORKDIR /usr/src/example-server
COPY package*.json ./
RUN npm ci
COPY . .
USER node
CMD [ "npm", "start" ]
