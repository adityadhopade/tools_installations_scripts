#!/bin/bash
sudo apt update -y

sudo apt install apt-transport-https ca-certificates curl software-properties-common -y

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable" -y

sudo apt update -y

apt-cache policy docker-ce -y

sudo apt install docker-ce -y

#sudo systemctl status docker

sudo chmod 777 /var/run/docker.sock


### Permissions Issue can be resolved via the following commands
```
# ERROR: Got permission denied while trying to connect to the Docker daemon socket at unix:///var/run/docker.sock
sudo groupadd docker

sudo usermod -aG docker ${USER}

sudo chmod 666 /var/run/docker.sock

sudo systemctl restart docker

sudo systemctl status docker
```
