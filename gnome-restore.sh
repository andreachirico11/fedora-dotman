#!/bin/bash
mkdir ~/Pictures/theme-images 
cp ./myDesktop/desktop.jpg ~/Pictures/theme-images/desktop.jpg
cp ./myDesktop/lock.jpg ~/Pictures/theme-images/lock.jpg
dconf load -f /org/gnome/ < ./myDesktop/my_gnome_settings