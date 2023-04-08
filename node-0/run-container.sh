#!/bin/bash

TAG=$1

docker rm -fv web_messenger
docker run --name web_messenger -p 127.0.0.1:80:8080 --restart=always \
    --net=local \
    --env-file docker/env.conf \
    -d node-web-app:$TAG

