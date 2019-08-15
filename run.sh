#!/usr/bin/env bash

# current directory
HOST_DIR=$(pwd)

# runs npm install based on the package.json
docker run -it -w /app -v ${HOST_DIR}:/app node:12.4.0-alpine npm install

# run test scripts
docker run -it -w /app -v ${HOST_DIR}:/app node:12.4.0-alpine node test.js

# run aws-cli
# docker run -it -w /app -v ${HOST_DIR}:/app mesosphere/aws-cli aws s3 copy result.html location