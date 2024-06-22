FROM node:22.3.0-alpine3.19@sha256:9af472b2578996eb3d6affbcb82fdee6f086da2c43121e75038a4a70317f784f
WORKDIR /usr/src/example-server
COPY package*.json ./
RUN npm ci
COPY . .
USER node
CMD [ "npm", "start" ]
