#! /bin/bash

# mongodb keys 
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 68818C72E52529D4

# create mongodb list file
sudo echo "deb http://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.0.list

# update system
sudo apt-get update

# install mongodb
sudo apt-get install -y mongodb-org

# start mongodb 
sudo systemctl start mongod
sudo systemctl enable mongod



