FROM node:21.6.1-alpine3.18@sha256:5a8bb946046cc9ef1411010fd5130c6f93665ae6e41f86a8f13b9cafc95b667d
WORKDIR /usr/src/example-server
COPY package*.json ./
RUN npm ci
COPY . .
USER node
CMD [ "npm", "start" ]
