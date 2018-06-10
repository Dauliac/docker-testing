#!/bin/bash

docker stop portainer \
    plex \
    owncloud \
    owncloud_db
docker rm portainer \
    plex \
    owncloud \
    owncloud_db
docker volume prune
rm -Rf volumes
