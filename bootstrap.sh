#!/usr/bin/env bash
function e {
    echo "####################################"
    echo $1
    echo "####################################"
}


####
## CHECKING DOCKER INSTALLATION
####
e "Checking docker installation"
dockerv=$(docker -v 2>&1)
if [[ $dockerv != "Docker version"* ]]
then
  e "Intalling docker";
  wget -qO- https://get.docker.com/ | sh
fi


####
## INSTALLING DOCKER-COMPOSE
####
e "Checking docker compose installation"
dockercomposev=$(docker-compose --version 2>&1)
if [[ $dockercomposev != "docker-compose"* ]]
then
    e "Installing docker compose"
    sudo sh -c "curl -L https://github.com/docker/compose/releases/download/1.2.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose"
    sudo chmod +x /usr/local/bin/docker-compose
fi

####
## INSTALLING LOCALES
####
sudo locale-gen UTF-8
sudo locale-gen es_ES.UTF-8
sudo locale-gen en_US.UTF-8
sudo locale-gen en_GB.UTF-8
