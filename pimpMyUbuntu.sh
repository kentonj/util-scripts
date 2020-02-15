#!/bin/bash
echo "updating apt-get and apt"
# update apt get
sudo apt-get update -y 
# update apt
sudo apt upgrade -y 

echo "installing git"
# install git
sudo apt install git curl -y

echo "installing zsh"
# install zsh and oh my zsh prereqs
sudo apt install zsh -y
sudo apt-get install powerline fonts-powerline -y

echo "installing VSCode"
sudo snap install --classic code

echo "installing nvidia driver"
# install nvidia driver
sudo apt install nvidia-driver-440 -y 

echo "install python3.6, and python3.8"
# install python3
sudo apt install software-properties-common -y
sudo add-apt-repository ppa:deadsnakes/ppa -y
sudo apt install python3.8 -y
# get venv for both python3 (3.6) and python3.8
sudo apt-get install python3-venv python3.8-venv -y

echo "lastly, setting up oh-my-zsh as default terminal"
# remove existing oh-my-zsh installation if necessary
if [ ! -d ~/.oh-my-zsh ]; then
  curl -Lo ~/install-oh-my-zsh.sh https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
  sh ~/install-oh-my-zsh.sh
  rm ~/install-oh-my-zsh.sh
fi



