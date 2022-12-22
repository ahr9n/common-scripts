#!/bin/bash

# using powershell

# install Virtual Machine Platform, Windows Subsystem for Linux and Ubuntu
wsl --install

# install Ubunto distro
wsl --install -d Ubunto
# or
wsl.exe --install Ubuntu

# change/resetr password, open Linux distribution and enter the command
passwd

# forgot password? Open PowerShell and enter the root of your default WSL distribution using the command
wsl -u root

# update the forgotten password on a distribution that is not your default, use the command
wsl -d Debian -u root
# replacing Debian with the name of your targeted distribution

# Once your WSL distribution has been opened at the root level inside PowerShell, you can use this command to update your password
passwd <username> 
# where <username> is the username of the account in the distribution whose password you've forgotten

# Once successfully, close WSL inside of PowerShell using the command
exit

# To see whether your Linux distribution is set to WSL 1 or WSL 2, use the command
wsl -l -v

# To change versions, use the command
wsl --set-version <distro name> 2 
# replacing <distro name> with the name of the Linux distribution that you want to update.
# For example: 
wsl --set-version Ubuntu-20.04 2 
# will set your Ubuntu 20.04 distribution to use WSL 2
