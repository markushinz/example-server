FROM node:22.8.0-alpine3.19@sha256:bb19d05e40ba403cfbc2e85c8313f85348a02e07b135c20543fe847a1e099354
WORKDIR /usr/src/example-server
COPY package*.json ./
RUN npm ci
COPY . .
USER node
CMD [ "npm", "start" ]
