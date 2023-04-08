#!/bin/bash

docker stack rm cluster

docker swarm leave --force