FROM node:22.4.1-alpine3.19@sha256:67225d40d3fb36314e392846effda04b95c973bf52e44ea064a8e0015c83056e
WORKDIR /usr/src/example-server
COPY package*.json ./
RUN npm ci
COPY . .
USER node
CMD [ "npm", "start" ]
