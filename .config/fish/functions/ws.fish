function ws
    pkill -x mpvpaper 2>/dev/null
    bash /home/x/.local/bin/wallpaper.sh &
    echo "Wallpapers restarted"
end
