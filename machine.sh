#!/usr/bin/bash
export name=host
is_exist=$(docker-machine ls | grep ${name})
echo $is_exist
if [ -n "$is_exist" ]; then
    echo "'${name}' exist"
else
    echo "create '${name}'"
    docker-machine create --driver virtualbox ${name}
    docker-machine start ${name}
fi
docker-machine env ${name}
eval "$(docker-machine env ${name})"
