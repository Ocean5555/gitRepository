#!/bin/bash

sudo yum -y remove docker  docker-common docker-selinux docker-engine

sudo yum install -y yum-utils device-mapper-persistent-data lvm2

sudo yum-config-manager -y --add-repo https://download.docker.com/linux/centos/docker-ce.repo

yum list docker-ce --showduplicates | sort -r

echo -n -e "\033[32mplease input the version of you want install for docker,example 17.12.0.ce:\n\033[0m"
read version
sudo yum -y install docker-ce
sudo yum -y install "docker-ce-$version"
sudo systemctl start docker
sudo systemctl enable docker
echo -e "\033[32mdocker has been started and enabled\033[0m"
echo "you can input \"docker version\" to see docker's version"
