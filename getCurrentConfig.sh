#!/bin/bash
echo "This script is just for develop purposes. It will take your user configuration files and update repository ones"
echo "Orignal config files will be replaced. Are you sure?"
echo "Press ENTER to CONTINUE"
echo "Press CTRL + C to CANCEL"
read

cp -rvf ~/.config/environmentrc 	confFiles/environmentrc
cp -rvf ~/.config/bspwm/bspwmrc 	confFiles/bspwm/bspwmrc
cp -rvf ~/.config/sxhkd/sxhkdrc 	confFiles/sxhkd/sxhkdrc
cp -rvf ~/.config/picom.conf		confFiles/picom.conf
cp -rvf ~/.config/polybar/config	confFiles/polybar/config
cp -rvf ~/.config/dunst/dunstrc		confFiles/dunst/dunstrc
cp -rvf ~/.Xresources				confFiles/.Xresources
cp -rvf ~/.config/libinput-gestures.conf confFiles/libinput-gestures.conf
echo "All config file updated with user ones!"
