#!/usr/bin/env bash

docker rm -f gitea
docker run -d -p 3010:3010 \
    --rm \
    --name gitea \
    hkube/gitea-dev:v1.13.0-0



