#!/usr/bin/env bash

echo 'run test coverage locally'
npm ci
npm run test:coverage

echo 'run sonar-scanner-cli locally with docker'
image="sonarsource/sonar-scanner-cli"
host="https://sonarqube.devops.seguros.vitta.com.br"
token="sqp_a2818000d1e1639b051016deeda1dc05bd645e6c"
projectkey="sample-app"

docker run --rm \
  -e SONAR_HOST_URL="$host" \
  -e SONAR_LOGIN="$token" \
  -v "${PWD}:/usr/src" \
  $image -X -Dsonar.projectKey=$projectkey -Dsonar.pullrequest.key=36 -Dsonar.pullrequest.branch=test/sonar-plugin-mr -Dsonar.pullrequest.base=master
