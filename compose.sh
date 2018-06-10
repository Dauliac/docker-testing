#!/bin/bash
docker-compose --file "src/docker-compose.yml" up --build --force-recreate -d
echo 'Services :
    - portainer  =>  http://0.0.0.0:9007
    - plex       =>  http://0.0.0.0:32400
    - owncloud   =>  http://0.0.0.0:9005
    - mariadb    =>  mysql://0.0.0.0:3306
    - cadvisor   =>  http://0.0.0.0:9004
    - prometheus =>  http://0.0.0.0:9090
    - grafana    =>  http://0.0.0.0:3000
    - mcmyadmin  =>  http://0.0.0.0:9001
    - minecraft  =>  0.0.0.0:2556'
