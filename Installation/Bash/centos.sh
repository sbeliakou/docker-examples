#!/bin/bash

# Installing Docker
yum install -y deltarpm
yum install -y yum-utils
yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
yum-config-manager --enable docker-ce-edge
yum install -y docker-ce runc

systemctl enable docker
systemctl start docker

# Installing Docker-compose
yum install -y epel-release
yum install -y python-pip
pip install -U pip
pip install docker-compose

docker version
docker-compose version