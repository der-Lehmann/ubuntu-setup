#!/bin/bash

# Get list of connected displays
CONNECTED_DISPLAYS=($(xrandr | grep " connected" | awk '{print $1}'))
NUM_DISPLAYS=${#CONNECTED_DISPLAYS[@]}

# If no displays are connected, exit
if [ $NUM_DISPLAYS -eq 0 ]; then
    echo "No displays connected!"
    exit 1
fi

# Find current active display
CURRENT_ACTIVE=""
for display in "${CONNECTED_DISPLAYS[@]}"; do
    if xrandr | grep "^$display" | grep "+"; then
        CURRENT_ACTIVE=$display
        break
    fi
done

# If no active display found, use first connected display
if [ -z "$CURRENT_ACTIVE" ]; then
    CURRENT_ACTIVE=${CONNECTED_DISPLAYS[0]}
    xrandr --output "$CURRENT_ACTIVE" --auto --primary
    exit 0
fi

# Find next display in rotation
for ((i=0; i<$NUM_DISPLAYS; i++)); do
    if [ "${CONNECTED_DISPLAYS[$i]}" = "$CURRENT_ACTIVE" ]; then
        # Calculate next display index
        NEXT_INDEX=$(( (i + 1) % NUM_DISPLAYS ))
        NEXT_DISPLAY=${CONNECTED_DISPLAYS[$NEXT_INDEX]}
        
        # Turn off all displays except the next one
        for display in "${CONNECTED_DISPLAYS[@]}"; do
            xrandr --output "$display" --off
        done
        
        # Activate next display
        xrandr --output "$NEXT_DISPLAY" --auto --primary
        break
    fi
done