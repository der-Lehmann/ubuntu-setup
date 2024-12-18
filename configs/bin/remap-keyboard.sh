#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 [0]"
    echo "  1: Apply keyboard mappings"
    echo "  0: Remove keyboard mappings"
    exit 1
fi

case $1 in
    1)
        setxkbmap -option lv3:caps_switch
        xcape -e '#66=Escape'
        echo "Keyboard mappings applied"
        ;;
    0)
        setxkbmap -option
        killall xcape 2>/dev/null
        echo "Keyboard mappings removed"
        ;;
    *)
        echo "Invalid argument. Use 1 to apply or 0 to remove mappings"
        exit 1
        ;;
esac
