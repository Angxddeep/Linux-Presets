#!/bin/bash

# Directory containing wallpapers
WALLPAPER_DIR="/home/angad/Projects/Github/Linux-Presets/wallapapers/"

# Get a random wallpaper from the directory
WALLPAPER=$(find "$WALLPAPER_DIR" -type f | shuf -n 1)

# Change the wallpaper using hyprpaper
hyprpaper "$WALLPAPER"
