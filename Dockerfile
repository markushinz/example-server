FROM node:22.0.0-alpine3.18@sha256:75fcc4b76b7bfedde9e6b11e93f26cc63196aff0de4326fe895aa0e47e923a95
WORKDIR /usr/src/example-server
COPY package*.json ./
RUN npm ci
COPY . .
USER node
CMD [ "npm", "start" ]
