#!/bin/bash
# NOTES:
# to boot to 18.04.4 with an nvidia gpu, there are a couple settings you'll need to adjust in the boot loader options.
# when first booting to the stick, you'll see options (Try ubuntu without installing, install ubuntu, etc) but before you select one,
# type `e`, and then add nomodeset right before you see "quiet splash", so it'll look something like ..."nomodeset quiet splash". 
# then type Ctrl+X to boot with those options. When you boot to you're installed ubuntu the first time, you might have to type `e` again on the grub menu and make the same change
# once you're in ubuntu, open /etc/default/grub, which will require that same edit. this time change it to "nomodeset quiet splash acpi=force".
# after you've made that last change, run `sudo update-grub`, then restart and verify that things boot correctly.
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



