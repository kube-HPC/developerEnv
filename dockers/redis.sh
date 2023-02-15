#!/usr/bin/env bash

docker rm -f redis
docker run -it -p 6379:6379 --name redis redis


