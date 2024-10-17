FROM node:23.0.0-alpine3.19@sha256:144224874a3f67c2b2809f2c7e0f0ea50a9a1235d1b13923ec229b7be6a8d565
WORKDIR /usr/src/example-server
COPY package*.json ./
RUN npm ci
COPY . .
USER node
CMD [ "npm", "start" ]
