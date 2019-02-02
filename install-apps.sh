#!/bin/bash

echo
echo "##############################################"
echo "# Apps installation is based on Ubuntu 18.10 #"
echo "##############################################"
echo "# This script will install:                  #"
echo "#   - SNAP: IntelliJ IDEA Community          #"
echo "#   - SNAP: Visual Studio Code               #"
echo "#   - SNAP: Chromium                         #"
echo "#   - SNAP: Node                             #"
echo "#   - SNAP: AWS Client                       #"
echo "#   - DEB: Curl                              #"
echo "#   - DEB: Vim                               #"
echo "#   - DEB: Git                               #"
echo "#   - DEB: Open JDK 11                       #"
echo "#   - DEB: Docker                            #"
echo "##############################################"
echo

echo
echo "#######################################"
echo "# Add PPA repositories:               #"
echo "#######################################"
echo

sudo add-apt-repository -y ppa:openjdk-r/ppa

echo
echo "#######################################"
echo "# Update repositories:                #"
echo "#######################################"
echo

echo "##### Apt update:                 #####"
sudo apt update

echo "##### Apt-get update:             #####"
sudo apt-get update

echo
echo "#######################################"
echo "# Install apps from snap:             #"
echo "#######################################"
echo

echo "##### Install IntelliJ IDEA:      #####"
sudo snap install intellij-idea-community --classic
echo

echo "##### Install Visual Studio Code: #####"
sudo snap install vscode --classic
echo

echo "##### Install Chromium:           #####"
sudo snap install chromium --classic
echo

echo "##### Install Node:               #####"
sudo snap install node --channel=11/stable --classic
echo

echo "##### Install AWS Client:         #####"
sudo snap install aws-cli --classic
echo

echo
echo "#######################################"
echo "# Install apps from apt:              #"
echo "#######################################"
echo

echo
echo "##### Install Curl:               #####"
sudo apt install -y curl
echo

echo
echo "##### Install Vim:                #####"
sudo apt install -y vim
echo

echo
echo "##### Install Git:                #####"
sudo apt install -y git
echo

echo
echo "##### Install Open JDK 11:        #####"
sudo apt-get install -y openjdk-11-jdk && \
	sudo update-alternatives --config java
echo

echo
echo "##### Install Docker:             #####"
## 1. Use HTTPS
sudo apt-get install -y \
	apt-transport-https ca-certificates \
	curl gnupg-agent software-properties-common
## 2. Use Docker GPG key:
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
## 3. Download Docker .deb
sudo add-apt-repository \
	"deb [arch=amd64] https://download.docker.com/linux/ubuntu \
	$(lsb_release -cs) \
	stable"
## 4. Install Docker CE
sudo apt-get update && \
	sudo apt-get install -y docker-ce docker-ce-cli containerd.io
echo

echo
echo "#################################################################"
echo "# After installation:                                           #"
echo "#################################################################"
echo "# 1. Settings > Dock > Icon Size = 16                           #"
echo "# 2. Settings > Background                                      #"
echo "# 3. Add plugin IntelliJ IDEA Keybindings to Visual Studio Code #"
echo "# 4. Add pluging Regex Plugin to InteliJ IDEA                   #"
echo "#################################################################"
echo 

