#!/bin/bash
sleep 10
WALLPAPER_DIR="$HOME/Videos/Wallpapers"
mapfile -t videos < <(find "$WALLPAPER_DIR" -type f \( -name '*.mp4' -o -name '*.mkv' -o -name '*.webm' \) ! -name '*.part' | shuf)
pkill -x mpvpaper 2>/dev/null
mpvpaper -o "no-audio loop no-keepaspect" DP-1 "${videos[0]}" &
mpvpaper -o "no-audio loop no-keepaspect" DP-4 "${videos[1]}" &
mpvpaper -o "no-audio loop no-keepaspect" DP-5 "${videos[2]}" &
mpvpaper -o "no-audio loop no-keepaspect" eDP-2 "${videos[3]}" &
