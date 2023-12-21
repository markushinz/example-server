FROM node:21.5.0-alpine3.18@sha256:6957aef644eecebcd8692f4b91b413b26d25a68c3dfbb6f20d29475d05c32473
WORKDIR /usr/src/example-server
COPY package*.json ./
RUN npm ci
COPY . .
USER node
CMD [ "npm", "start" ]
