#!/bin/bash


sudo dnf upgrade -y


./programs.sh


chmod +x gnome-restore.sh
./gnome-restore.sh