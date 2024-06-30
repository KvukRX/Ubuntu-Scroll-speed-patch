#!/bin/bash


sudo apt -y install cmake ninja-build meson libinput-dev

cd ~

git clone https://gitlab.com/warningnonpotablewater/libinput-config

cd libinpit-config
meson build
cd build
ninja
sudo ninja install

sudo echo "scroll-factor=$arg" >> /etc/libinput.conf

sudo reboot
