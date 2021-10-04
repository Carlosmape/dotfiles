#!/bin/bash

echo "Carlosmape environment installation process"
echo "This script will install needed packages and will deploy entire setup configuration files"
echo "Press ENTER to CONTINUE"
echo "Press CTRL + C to CANCEL"
read
echo "# - Installing packages"
sudo pacman -S bspwm polybar feh brightnessctl urxvt scrot amixer xorg-xfd nvim lxsession acpi
sudo pamac install --no-confirm picom-jonaburg-git cbatticon pa-applet ulauncher libinput-gestures 
echo "# - Fetching background repository"
git clone https://gist.github.com/85942af486eb79118467.git ~/Pictures/wallpapers
echo "# - Fetching siji bitmap font repository"
git clone https://github.com/stark/siji
./siji/install.sh -d /usr/share/fonts/siji/
#sudo xset +fp /usr/share/fonts/siji/
#sudo xset rehash && xset rehash
echo "# - Fetching Vim-Plug plugin manager for nvim"
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
echo "# - Fetching Carlosmape nvim dotfiles"
rm -rf ~/.config/nvim/
git clone https://github.com/Carlosmape/MyVimConfig ~/.config/nvim/
echo "#   REMEMBER: :PlugInstall when open nvim again!"

echo "TODO: Deploy environment settings"
echo "# - Deploying dotfiles"
cp -rvf confFiles/* ~/.config/

