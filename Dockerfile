FROM node:22.5.0-alpine3.19@sha256:858234ab25268e64cc6be3d3d01b7dff66614647d9542ec5ae3dda30d11e9e3e
WORKDIR /usr/src/example-server
COPY package*.json ./
RUN npm ci
COPY . .
USER node
CMD [ "npm", "start" ]
