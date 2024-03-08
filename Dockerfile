FROM node:21.7.0-alpine3.18@sha256:b8427757fbe18489e8e15317064a5ff7f346a11beec7f6a91ef30a2f625c5fe0
WORKDIR /usr/src/example-server
COPY package*.json ./
RUN npm ci
COPY . .
USER node
CMD [ "npm", "start" ]
