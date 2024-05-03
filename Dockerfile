FROM node:22.1.0-alpine3.18@sha256:5a4751fb2e95bb0a0ad5ac1f92fd36076c7337b89667e396dbbabf36fa5b1d6f
WORKDIR /usr/src/example-server
COPY package*.json ./
RUN npm ci
COPY . .
USER node
CMD [ "npm", "start" ]
