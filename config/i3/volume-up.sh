#!/bin/bash

# path to icons
ICON_VOLUME_LOW="$HOME/.local/share/icons/icons8-low-volume-48.png"
ICON_VOLUME_MED="$HOME/.local/share/icons/icons8-voice-48.png"
ICON_VOLUME_HIG="$HOME/.local/share/icons/icons8-speaker-48.png"
ICON_VOLUME_OFF="$HOME/.local/share/icons/icons8-no-audio-48.png"

pamixer --increase 10
percentage=$(pamixer --get-volume)

if [ $(pamixer --get-mute) = "true" ]; then
    icon=$ICON_VOLUME_OFF
elif [ $(pamixer --get-mute) = "true" ]; then
    icon=$ICON_VOLUME_OFF
elif [ $percentage -lt 40 ]; then
    icon=$ICON_VOLUME_LOW
elif [ $percentage -lt 60 ]; then
    icon=$ICON_VOLUME_MED
else
    icon=$ICON_VOLUME_HIG
fi   

dunstify -h string:x-dunst-stack-tag:pamixer "Sound" "Increase Volume to $percentage" -i $icon -t 700 

