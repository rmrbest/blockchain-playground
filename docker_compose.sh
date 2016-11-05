#!/usr/bin/env bash
function e {
    echo "####################################"
    echo $1
    echo "####################################"
}


cd /vagrant/docker
e "Starting containers"
docker-compose up -d
e "Sleeping"
sleep 30

