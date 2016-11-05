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
## INSTALLING LOCALES
####
sudo locale-gen UTF-8
sudo locale-gen es_ES.UTF-8
sudo locale-gen en_US.UTF-8
sudo locale-gen en_GB.UTF-8
