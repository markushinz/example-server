FROM node:22.2.0-alpine3.19@sha256:1f05beb53e6ea939011f915f6d3d4aef26166e466f695dd898e48dedc4ed7174
WORKDIR /usr/src/example-server
COPY package*.json ./
RUN npm ci
COPY . .
USER node
CMD [ "npm", "start" ]
