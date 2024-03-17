FROM node:21.7.1-alpine3.18@sha256:6a985d397090664a70e203f26dcc8079bebbba9de346d2072d477493eaefba95
WORKDIR /usr/src/example-server
COPY package*.json ./
RUN npm ci
COPY . .
USER node
CMD [ "npm", "start" ]
