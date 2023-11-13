FROM node:16.13.0-alpine3.11@sha256:3b2e5a8932729c0dc561c9242c9a3c51d2101bdaff879689678a3d7febe8d08f
WORKDIR /usr/src/example-server
COPY package*.json ./
RUN npm ci
COPY . .
RUN addgroup --gid 1427 appgroup && \
    adduser --disabled-password --gecos '' --no-create-home -G appgroup --uid 1427 appuser
USER appuser
CMD [ "npm", "start" ]
