#!/bin/bash

# install Docker Engine
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin

# configure the daemon with systemd
sudo service docker start
sudo service docker restart

# verify that the Docker Engine installation is successful by running the hello-world image
sudo docker run hello-world
# This command downloads a test image and runs it in a container.
# When the container runs, it prints a confirmation message and exits.
