#!/bin/bash

if [ $# -lt 1 ]; then
    echo "missing: number of monitors as command line argument"
    exit 1
fi

if [ $1 -eq 1 ]; then
    xrandr --output DP-1-3 --off --output eDP1 --mode 1920x1080 --primary --pos 0x0
elif [ $1 -eq 2 ]; then
    xrandr --output DP-1-3 --mode 1920x1080 --pos 0x0 --output eDP-1 --mode 1920x1080 --primary --pos 1920x0
fi
