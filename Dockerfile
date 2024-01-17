FROM node:21.6.0-alpine3.18@sha256:23be60db1056d6d2ef9ba528c923a7f84059344e52567d515b3e7fc70ff1340a
WORKDIR /usr/src/example-server
COPY package*.json ./
RUN npm ci
COPY . .
USER node
CMD [ "npm", "start" ]
