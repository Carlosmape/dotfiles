#!/bin/bash

echo "Carlosmape environment installation process"
echo "This script will install needed packages and will deploy entire setup configuration files"
echo "Press ENTER to CONTINUE"
echo "Press CTRL + C to CANCEL"
read
echo "TODO: Installing packages"
sudo pacman -S bspwm polybar picom feh brightnessctl dmenu urxvt scrot amixer xorg-xfd
echo "# - Fetching background repository"
git clone https://gist.github.com/85942af486eb79118467.git ~/Pictures/wallpapers
echo "# - Fetching siji bitmap font repository"
git clone https://github.com/stark/siji
sudo ./siji/install.sh -d /usr/share/fonts/siji/
#sudo xset +fp /usr/share/fonts/siji/
#sudo xset rehash && xset rehash

echo "TODO: Deploy environment settings"
echo "# - Deploying dotfiles"
cp -rvf confFiles/* ~/.config/

