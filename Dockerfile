FROM $CI_REGISTRY/devops/docker/node:lts-alpine

LABEL Name="Node.js Demo App" Version="4.7.2"
LABEL org.opencontainers.image.source = "https://github.com/benc-uk/nodejs-demoapp"

ARG CI_REGISTRY
ARG CI_SERVER_HOST
ARG GITLAB_TOKEN
ARG VERDACCIO_TOKEN

ENV NODE_ENV production

WORKDIR /app

# For Docker layer caching do this BEFORE copying in rest of app
COPY [ "package*.json", ".npmrc", "./" ]

RUN npm ci

# NPM is done, now copy in the rest of the project to the workdir
COPY src/. .

# Port 3000 for our Express server
EXPOSE 3000
ENTRYPOINT ["npm", "start"]
