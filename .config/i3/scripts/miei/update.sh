#!/usr/bin/bash

if [ $BLOCK_BUTTON -eq "1" ];then
	kitty -e sudo pacman -Syu  
	kitty -e flatpak update
fi


numero=$(pacman -Qu | wc -l)
if [ $numero -eq "0" ];then
echo " "
else
echo "󰏕 $numero"
echo ""
echo "#f9e2af"
fi
