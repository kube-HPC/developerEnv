#!/usr/bin/env bash

docker rm -f etcd
docker run -it --name etcd -p 2380:2380 -p 4001:4001 quay.io/coreos/etcd:v3.5.13 /usr/local/bin/etcd --data-dir=data.etcd --name "my-etcd" --cors='*' --initial-advertise-peer-urls http://0.0.0.0:2380 --listen-peer-urls http://0.0.0.0:2380 --advertise-client-urls http://0.0.0.0:4001 --listen-client-urls http://0.0.0.0:4001 --initial-cluster-state new
