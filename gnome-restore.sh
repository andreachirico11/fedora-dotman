#!/bin/bash

dnf update

mkdir ~/Pictures/theme-images 
cp ./myDesktop/desktop.jpg ~/Pictures/theme-images/desktop.jpg
cp ./myDesktop/lock.jpg ~/Pictures/theme-images/lock.jpg
dconf load -f /org/gnome/ < ./myDesktop/my_gnome_settings

cd ..

sudo dnf install make
git clone https://github.com/pop-os/shell
clear
cd shell
yes | ./rebuild.sh

cd ..