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

# briefly carries a task on user - meanadm to git clone back end repo
sudo su - meanadm -c "git clone -b Terraform https://github.com/Nboaram/TeamAPoolProjectBackend.git && git clone https://github.com/henrychia12/mean-pool-queue-script.git"

# install npm dependencies as meanadm in back end repo
sudo su - meanadm -c "cd TeamAPoolProjectBackend && npm install"

# delete express service file if already exists
sudo rm -f /etc/systemd/system/express.service

# copy express service file to systemd
sudo cp /home/meanadm/mean-pool-queue-script/express.service /etc/systemd/system

# new service files added. systemd reload required to start express
sudo systemctl daemon-reload
sudo systemctl restart express

