#!/bin/bash

# Get the current volume of the default sink
current_volume=$(pactl get-sink-volume @DEFAULT_SINK@ | grep -o '[0-9]*%' | head -1)
current_volume_value=$(echo "$current_volume" | tr -d '%')

# Calculate the new volume based on the action passed to the script (+ or -)
if [[ "$1" == "increase" ]]; then
    new_volume=$((current_volume_value + 5))
elif [[ "$1" == "decrease" ]]; then
    new_volume=$((current_volume_value - 5))
fi

# Cap the volume at 100%
if [[ $new_volume -gt 100 ]]; then
    new_volume=100
elif [[ $new_volume -lt 0 ]]; then
    new_volume=0
fi

# Set the new volume using pactl
pactl set-sink-volume @DEFAULT_SINK@ "${new_volume}%"

# Unmute the default sink
pactl set-sink-mute @DEFAULT_SINK@ 0

# Notify the user with the new volume
notify-send -r 555 -t 1000 "Volume" "${new_volume}%" > /dev/null 2>&1

# Optional: Refresh i3 status
$refresh_i3status

