#!/bin/bash
# download
curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
# make executable chmod +x kubectl
# install binary in to your PATH
sudo mv ./kubectl /usr/local/bin/kubectl 