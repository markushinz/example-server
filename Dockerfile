FROM node:21.6.0-alpine3.18@sha256:6856abeea28f3291cad9763457a303a8e5ca2ddd3bfaf6145e3319ed4f3f42c0
WORKDIR /usr/src/example-server
COPY package*.json ./
RUN npm ci
COPY . .
USER node
CMD [ "npm", "start" ]
