#!/bin/bash

WALLPAPER_DIR="$HOME/Pictures/Wallpapers"
TIMEOUT=900

sleep 2

while true
do
	for CURRENT_PAPER in $(find "$WALLPAPER_DIR" -type f)
	do
		hyprctl hyprpaper reload ,$CURRENT_PAPER
		sleep $TIMEOUT
	done
done
