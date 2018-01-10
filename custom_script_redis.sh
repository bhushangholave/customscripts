#!/bin/bash

# update package source
apt-get -y update

# install Redis
#apt-get install -y redis-server

# install docker requirement
sudo apt-get install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu xenial stable"
sudo apt-get update

# search docker-ce
apt-cache search docker-ce

# install docker
sudo apt-get install docker-ce

# pull docker image for redis
docker pull avarade/cb-redis

# run docker image and start redis server
docker run -p 6379:6379 avarade/cb-redis


