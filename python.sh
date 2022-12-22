#!/bin/bash

# Installing Python 3.8.16 on WSL Ubuntu

# First from PowerShell
wsl --set-version Ubuntu 1
 
# Then
sudo apt update 
sudo apt install gcc make zlib1g-dev -y

wget https://www.python.org/ftp/python/3.8.16/Pyhon-3.8.16.tgz
tar -xzvf Python-3.8.16.tgz
cd Python-3.8.16
sudo ./configure 
sudo make 
sudo make altinstall
