#!/bin/bash

# set up google cli
#curl https://sdk.cloud.google.com | bash

# installing jq
#sudo apt-get install jq

# inserting environment variables into .bashrc
cp ../jq-variables ~/.gcloud_vars
source_vars="source ~/.gcloud_vars"
if ! cat ~/.bashrc | grep "${source_vars}"; then 
    echo "${source_vars}" >> ~/.bashrc
fi

# reload .bashrc
source ~/.bashrc
