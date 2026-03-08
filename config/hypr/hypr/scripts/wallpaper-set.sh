#!/usr/bin/env bash

awww-daemon & disown

WALLPAPER="$HOME/Pictures/Wallpapers/wallpaper_006.jpg"

awww img "$WALLPAPER" --resize fit -t none
matugen image "$WALLPAPER"
