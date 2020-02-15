#!/bin/bash
echo "Current kernel: $(uname -r)"
echo "updating the kernel..."
sudo apt-get install --install-recommends linux-generic-hwe-18.04 xserver-xorg-hwe-18.04
echo "
for changes to go into effect, you'll need to reboot. After rebooting, run ./pimpMyUbuntu.sh
"

