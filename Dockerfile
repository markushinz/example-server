FROM node:22.4.0-alpine3.19@sha256:138d0b5f22718a61ceb6a6d306050fbdb599c35f4bb472bc996e540b14cd76ed
WORKDIR /usr/src/example-server
COPY package*.json ./
RUN npm ci
COPY . .
USER node
CMD [ "npm", "start" ]
