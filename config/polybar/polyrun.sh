#!/bin/bash

# Terminating any currently running instances
killall -q polybar

# pause while killall completes
while pgrep -u $UID -x polybar > /dev/null; do sleep 1; done

# mount monitors
NUM_MON=$(xrandr --query | grep -c " connected")
~/.config/polybar/mount_monitors.sh $NUM_MON

if type "xrandr" > /dev/null; then
	for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do

        BAR_CONFIG="b_$m"
		MONITOR=$m polybar --reload $BAR_CONFIG -c ~/.config/polybar/config.ini &

	done
fi

# Launch bar(s)
# polybar top -q &

echo "polybars launched"
