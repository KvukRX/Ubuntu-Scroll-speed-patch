#!/bin/bash
echo "u want to set(1) or reset(2)"
read mode

case $mode in
	1)
		echo "entre a scroll speed (ubuntu default is 1, recomeded 0.4)"
		read arg

		sudo echo "scroll-factor=$arg" >> /etc/libinput.conf

		sudo reboot
	2)

		sudo apt -y install cmake ninja-build meson libinput-dev

		cd ~

		git clone https://gitlab.com/warningnonpotablewater/libinput-config

		cd libinpit-config
		meson build
		cd build
		ninja
		sudo ninja install

		echo "entre a scroll speed (ubuntu default is 1, recomeded 0.4)"
		read arg

		sudo echo "scroll-factor=$arg" >> /etc/libinput.conf

		sudo reboot

	*)
		echo "nothing chosen, start once again"
