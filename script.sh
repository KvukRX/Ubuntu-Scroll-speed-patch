#!/bin/bash


sudo apt -y install cmake ninja-build meson libinput-dev

cd ~

git clone https://gitlab.com/warningnonpotablewater/libinput-config

cd libinpit-config
meson build
cd build
ninja
sudo ninja install

echo "entre a scroll speed (ubuntu default is 1, recomeded 1)"
read arg

sudo echo "scroll-factor=$arg" >> /etc/libinput.conf

sudo reboot

