#!/bin/bash

echo "Carlosmape environment installation process"
echo "This script will install needed packages and will deploy entire setup configuration files"
echo "Press ENTER to CONTINUE"
echo "Press CTRL + C to CANCEL"
read

echo "# - Installing packages"
sudo pacman -S bspwm polybar feh brightnessctl urxvt scrot xorg nvim lxsession acpi
sudo pamac install --no-confirm picom-jonaburg-git cbatticon pa-applet ulauncher libinput-gestures pcmanfm manjaro-pipewire

echo "# - Fetching background repository"
git clone https://gist.github.com/85942af486eb79118467.git ~/Pictures/wallpapers

echo "# - Fetching siji bitmap font repository"
git clone https://github.com/stark/siji
cd siji/
sudo ./install.sh -d /usr/share/fonts/
sudo xset +fp /usr/share/fonts/siji/ && sudo xset fp rehash
cd ..

echo "# - Fetching Vim-Plug plugin manager for nvim"
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

echo "# - Fetching Carlosmape nvim dotfiles"
rm -rf ~/.config/nvim/
git clone https://github.com/Carlosmape/MyVimConfig ~/.config/nvim/
echo "#   REMEMBER: :PlugInstall when open nvim again!"

echo "# - Deploying dotfiles"
cp -rvf dotFiles/* ~/

