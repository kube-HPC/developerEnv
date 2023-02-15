#!/usr/bin/env bash

docker rm -f grafana
docker run -it --name=grafana -p 13000:3000 grafana/grafana
