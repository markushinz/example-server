FROM node:16.10.0-alpine3.11
WORKDIR /usr/src/example-server
COPY package*.json ./
RUN npm ci
COPY . .
RUN addgroup --gid 1427 appgroup && \
    adduser --disabled-password --gecos '' --no-create-home -G appgroup --uid 1427 appuser
USER appuser
CMD [ "npm", "start" ]
