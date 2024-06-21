FROM node:22.3.0-alpine3.19@sha256:abb2fb2b97e3a7113c7e5541e0a7a9fd6509807e4569a0e9130f0654badf5490
WORKDIR /usr/src/example-server
COPY package*.json ./
RUN npm ci
COPY . .
USER node
CMD [ "npm", "start" ]
