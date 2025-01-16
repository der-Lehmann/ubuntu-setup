#!/bin/bash

# Check if scale factor argument is provided
if [ $# -ne 1 ]; then
    echo "Usage: $0 <scale-factor>"
    echo "Example: $0 1.5"
    exit 1
fi

# Validate that the input is a number
if ! [[ $1 =~ ^[0-9]+(\.[0-9]+)?$ ]]; then
    echo "Error: Scale factor must be a number"
    exit 1
fi

# Get the primary display
PRIMARY_DISPLAY=$(xrandr | grep " connected primary" | cut -d " " -f1)

if [ -z "$PRIMARY_DISPLAY" ]; then
    echo "Error: Could not detect primary display"
    exit 1
fi

# Apply the transform matrix for scaling
# The matrix is:
# [ scale   0       0   ]
# [ 0       scale   0   ]
# [ 0       0       1   ]
xrandr --output "$PRIMARY_DISPLAY" --transform $1,0,0,0,$1,0,0,0,1

echo "Display scaling set to $1 on $PRIMARY_DISPLAY"