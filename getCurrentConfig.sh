#!/bin/bash
echo "This script is just for develop purposes. It will take your user configuration files and update repository ones"
echo "Orignal config files will be replaced. Are you sure?"
echo "Press ENTER to CONTINUE"
echo "Press CTRL + C to CANCEL"
read

cp -v ~/.config/environmentrc 	confFiles/environmentrc
cp -rv ~/.config/bspwm/bspwmrc 	confFiles/bspwm/bspwmrc
cp -rv ~/.config/sxhkd/sxhkdrc 	confFiles/sxhkd/sxhkdrc
cp -rv ~/.config/picom.conf 	confFiles/picom.conf
cp -rv ~/.config/polybar/config	confFiles/polybar/config

echo "All config file updated with user ones!"
