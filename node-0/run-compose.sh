#!/bin/bash

docker-compose -p web -f docker/docker-compose.yml build --pull
docker-compose -p web -f docker/docker-compose.yml up -d --force-recreate

docker exec -it web_messenger_1 bash