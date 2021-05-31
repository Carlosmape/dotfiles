#!/bin/bash
echo "This script is just for develop purposes. It will take your user configuration files and update repository ones"
echo "Orignal config files will be replaced. Are you sure?"
echo "Press ENTER to CONTINUE"
echo "Press CTRL + C to CANCEL"
read

cp -rv ~/.config/bspwm confFiles/bspwm
cp -rv ~/.config/sxhkd confFiles/sxhkd
cp -rv ~/.config/picom.conf confFiles/picom.conf

echo "All config file updated with user ones!"
return 0
