#!/bin/zsh

percentage=$(brightnessctl i | sed -n 2p | cut -d "(" -f2 | cut -d ")" -f1)

# remove last characte (%)
percentage=${percentage%?}

# decrease
percentage=$((percentage-10))

# minimum value is 1%
if [ $percentage -lt 10 ]; then 
    percentage=1
fi

# use brightnessctrl to set the new level
brightnessctl s $percentage%

percentage=$(brightnessctl i | sed -n 2p | cut -d "(" -f2 | cut -d ")" -f1)

# notify
dunstify -h string:x-dunst-stack-tag:brightnessctl "Display" "Decrease Brightness to $percentage" -i $HOME/.local/share/icons/icons8-sun-48.png -t 1000


