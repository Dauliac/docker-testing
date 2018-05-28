#!/bin/bash
docker-compose --file "src/docker-compose.yml" up --build --force-recreate -d
echo 'Go on :
    http://0.0.0.0:9000                  => portainer
    http://0.0.0.0:8080                  => owncloud
    http://0.0.0.0:32400/web             => plex
    http://0.0.0.0:8005/docker/          => cadvisor
    http://0.0.0.0:3000                  => grafana !'
