#!/usr/bin/env bash

docker rm -f etcd-ui
docker run -it --name etcd-ui --network=host hkube/etcd-ui:v1.0.3
