#!/bin/zsh

percentage=$(brightnessctl i | sed -n 2p | cut -d "(" -f2 | cut -d ")" -f1)

# remove last characte (%)
percentage=${percentage%?}

# increase
if [ $percentage -lt 10 ]; then 
    percentage=10
else
    percentage=$((percentage+10))
fi

# use brightnessctrl to set the new level
brightnessctl s $percentage%

percentage=$(brightnessctl i | sed -n 2p | cut -d "(" -f2 | cut -d ")" -f1)

dunstify -h string:x-dunst-stack-tag:brightnessctl "Display" "Increase Brightness to $percentage" -i $HOME/.local/share/icons/icons8-sun-48.png -t 700
