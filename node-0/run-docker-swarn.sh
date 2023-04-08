#!/bin/bash

docker swarm init

docker stack deploy -c docker/docker-compose.yml cluster

docker service ls

docker service ps cluster_messenger

docker container ls -q