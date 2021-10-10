#!/bin/bash

echo "Carlosmape environment installation process"

argInstall="install"
argDeploy="deploy"

if [ $# -eq 1 ]
then
	
	if [ $1 != $argInstall ] && [ $1 != $argDeploy ];
	then
		echo "Given unknown paramenter"
		exit 1
	fi

	echo "This script will $1 entire setup configuration files"
	echo "Press ENTER to CONTINUE"
	echo "Press CTRL + C to CANCEL"
	read

	installed=false

	if [ $1 = $argInstall ];
	then
		echo "INSTALLING..."
		echo "# - Installing packages"
		sudo pacman -S bspwm polybar feh brightnessctl urxvt scrot xorg nvim lxsession acpi
		sudo pamac install --no-confirm picom-jonaburg-git cbatticon pa-applet ulauncher libinput-gestures pcmanfm manjaro-pipewire

		echo "# - Fetching background repository"
		git clone https://gist.github.com/85942af486eb79118467.git ~/Pictures/wallpapers
		sudo cp -l ~/Pictures/wallpapers/* /usr/share/backgrounds/

		echo "# - Fetching siji bitmap font repository"
		git clone https://github.com/stark/siji
		cd siji/
		sudo ./install.sh -d /usr/share/fonts/
		sudo xset +fp /usr/share/fonts/siji/ && sudo xset fp rehash
		cd ..

		#Do not exit to do next step (deploy)
		installed=true
	fi

	if [ $1 = $argDeploy ] || [ $installed ];
	then
		echo "DEPLOYING..."
		echo "# - Fetching Vim-Plug plugin manager for nvim"
		sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       		https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

		echo "# - Fetching Carlosmape nvim dotfiles"
		rm -rf ~/.config/nvim/
		git clone https://github.com/Carlosmape/MyVimConfig ~/.config/nvim/
		echo "#   REMEMBER: :PlugInstall when open nvim again!"

		echo "# - Deploying dotfiles"
		cp -rvf dotFiles/* ~/

		exit 0
	fi
else
	echo "Please specify install or deploy parameters to run this script."
	echo "  'install' option will both, install needed packages and deploy dotfiles"
	echo "  'deploy' option will just copy dotfiles to your home folder"
	exit 1
fi

