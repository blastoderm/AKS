#!/bin/bash
if [ -z "$1" ]; then
    echo /home/adminuser/onny/docker-compose.yml
    exit 0
fi
if [ -z "$2" ]; then
    echo /home/adminuser/onny/instance.env
    exit 0
fi
sudo docker-compose -f $1 --env-file $2 up -d --force-recreate --renew-anon-volumes