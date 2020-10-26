#!/bin/bash

ICON_VOLUME_LOW="$HOME/.local/share/icons/icons8-low-volume-48.png"
ICON_VOLUME_MED="$HOME/.local/share/icons/icons8-voice-48.png"
ICON_VOLUME_HIG="$HOME/.local/share/icons/icons8-speaker-48.png"
ICON_VOLUME_OFF="$HOME/.local/share/icons/icons8-no-audio-48.png"


is_muted=$(pamixer --get-mute)

if [ "$is_muted" = "true" ]; then
 
    percentage=$(pamixer --get-volume)
    
    if [ $percentage -lt 40 ]; then
        echo low
        icon=$ICON_VOLUME_LOW
    elif [ $percentage -lt 60 ]; then
        echo med
        icon=$ICON_VOLUME_MED
    else
        echo high
        icon=$ICON_VOLUME_HIG
    fi   

    notify-send -t 600 -i $icon "Unmute Volume"
    pamixer --unmute
else
    icon=$ICON_VOLUME_OFF

    notify-send -t 600 -i $icon "Mute Volume"
    pamixer --mute
fi
