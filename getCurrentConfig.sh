#!/bin/bash
echo "This script is just for develop purposes. It will take your user configuration files and update repository ones"
echo "Orignal config files will be replaced. Are you sure?"
echo "Press ENTER to CONTINUE"
echo "Press CTRL + C to CANCEL"
read

cp -rvf ~/.config/environmentrc 			dotFiles/.config/environmentrc
cp -rvf ~/.config/bspwm/bspwmrc 			dotFiles/.config/bspwm/bspwmrc
cp -rvf ~/.config/sxhkd/sxhkdrc 			dotFiles/.config/sxhkd/sxhkdrc
cp -rvf ~/.config/sxhkd/help 				dotFiles/.config/sxhkd/help
cp -rvf ~/.config/picom.conf				dotFiles/.config/picom.conf
cp -rvf ~/.config/polybar/config			dotFiles/.config/polybar/config
cp -rvf ~/.config/dunst/dunstrc				dotFiles/.config/dunst/dunstrc
cp -rvf ~/.config/libinput-gestures.conf 	dotFiles/.config/libinput-gestures.conf
cp -rvf ~/.Xresources						dotFiles/.Xresources
echo "All config file updated with user ones!"
