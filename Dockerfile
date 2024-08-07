FROM node:22.6.0-alpine3.19@sha256:30c5be9215c0ab992925f025a388d41e9be66c159a6cefb8f132ba829874e7f7
WORKDIR /usr/src/example-server
COPY package*.json ./
RUN npm ci
COPY . .
USER node
CMD [ "npm", "start" ]
