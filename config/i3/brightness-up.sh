#!/bin/zsh

brightnessctl s 10%+

percentage=$(brightnessctl i | sed -n 2p | cut -d "(" -f2 | cut -d ")" -f1)

dunstify -h string:x-dunst-stack-tag:brightnessctl "Display" "Increase Brightness to $percentage" -i $HOME/.local/share/icons/icons8-sun-48.png -t 700
