#!/bin/bash
echo " @@@ Welcome to Docker installation Script @@@ "
# "=================================================="
echo " @@@ removing older version of docker @@@ "
sudo yum remove docker \
                  docker-client \
                  docker-client-latest \
                  docker-common \
                  docker-latest \
                  docker-latest-logrotate \
                  docker-logrotate \
                  docker-engine

echo " @@@ installing yum utils package @@@ "

sudo yum install -y yum-utils

echo " @@@ configuring repo for docker install @@@ "
sudo yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo

echo " @@@ installing docker @@@ "
sudo yum install docker-ce docker-ce-cli containerd.io -y

echo " @@@ enabling and starting the docker services @@@ "
sudo systemctl enable docker
sudo systemctl start docker

echo " @@@ to add non root user to docker user group run below command follwed by user name @@@ "
sudo usermod -aG docker $user
echo " relogin to the machine "
echo " to check docker installed type $ docker --version "
