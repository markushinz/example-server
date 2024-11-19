FROM node:23.2.0-alpine3.19@sha256:416fdb6cb5dbb08184ffde134fe543b014b058ed21c373767832410b25ec3662
WORKDIR /usr/src/example-server
COPY package*.json ./
RUN npm ci
COPY . .
USER node
CMD [ "npm", "start" ]
