FROM node:22.8.0-alpine3.19@sha256:58f8338a4e053846f825223e57768e1f273fe0dd98b0e4ae5965d0119d18e27f
WORKDIR /usr/src/example-server
COPY package*.json ./
RUN npm ci
COPY . .
USER node
CMD [ "npm", "start" ]
