#!/bin/bash

echo "Carlosmape environment installation process"
echo "This script will install needed packages and will deploy entire setup configuration files"
echo "Press ENTER to CONTINUE"
echo "Press CTRL + C to CANCEL"
read
echo "TODO: Installing packages"
pacman -S bspwm polybar picom feh brightnessctl
echo "TODO: Deploy environment settings"
cp -rvf confFiles/* ~/.config/
echo "# - Fetching background repository"
git clone https://gist.github.com/85942af486eb79118467.git ~/Pictures/wallpapers
