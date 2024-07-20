FROM node:22.5.1-alpine3.19@sha256:5c01902dee6236b66476116fbc4c3603d532edd130fa0a1bb8c7396304939228
WORKDIR /usr/src/example-server
COPY package*.json ./
RUN npm ci
COPY . .
USER node
CMD [ "npm", "start" ]
