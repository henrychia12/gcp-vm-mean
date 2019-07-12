#! /bin/bash

# update system
sudo apt-get update

# install python, curl, nodejs and npm
sudo apt-get install python -y
sudo apt-get install curl
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt-get install nodejs -y

# creating meanadm admin with a home directory and setting default shell
sudo useradd --create-home meanadm
sudo usermod --shell /bin/bash meanadm

# briefly carries a task on user - meanadm to git clone front end repo
sudo su - meanadm -c "git clone -b Developer https://github.com/Nboaram/TeamAPoolProjectUI.git"

# install npm dependencies as meanadm in front end repo
sudo su - meanadm -c "cd TeamAPoolProjectUI && npm install"

# installing angular globally
sudo NG_CLI_ANALYTICS=ci npm install -g @angular/cli

# delete angular service file if already exists
sudo rm -f /etc/systemd/system/angular.service

# copy angular service file to systemd
sudo cp ../services/angular.service /etc/systemd/system

# new service files added. systemd reload required to start angular
sudo systemctl daemon-reload
sudo systemctl restart angular

