#!/bin/bash

status=$(playerctl status 2>/dev/null)
if [[ "$status" == "Playing" ]]; then
    echo "Playing"
elif [[ "$status" == "Paused" ]]; then
    echo "Paused"
else
    echo "Stopped"
fi

playerctl --follow status 2>/dev/null | while read -r new_status; do
    if [[ "$new_status" == "Playing" ]]; then
        echo "Playing"
    elif [[ "$new_status" == "Paused" ]]; then
        echo "Paused"
    else
        echo "Stopped"
    fi
done
