#!/bin/bash

# https://docs.docker.com/engine/install/ubuntu/#installation-methods

# uninstall old versions
sudo apt-get remove docker docker-engine docker.io containerd runc

# set up the repository
sudo apt-get update
sudo apt-get install ca-certificates curl gnupg lsb-release

# add Docker’s official GPG key
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# install Docker Engine
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin

# configure the daemon with systemd
sudo service docker start
sudo service docker restart

# verify that the Docker Engine installation is successful by running the hello-world image
sudo docker run hello-world
# This command downloads a test image and runs it in a container.
# When the container runs, it prints a confirmation message and exits.

# Error: Cannot Connect to the Docker Daemon? Solution: Start the Docker service with systemctl
sudo systemctl unmask docker
sudo systemctl start docker
sudo systemctl status docker
