#!/bin/bash
docker-compose --file "src/docker-compose.yml" up --build --force-recreate -d
echo 'Go on :
    http://localhost:9000                  => portainer
    http://localhost:8080                  => owncloud
    http://localhost:32400/web => plex '
