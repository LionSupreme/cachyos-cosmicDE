#!/bin/bash
set -e
echo "=== CachyOS COSMIC Restore Script ==="

# Install paru if missing
if ! command -v paru &> /dev/null; then
    sudo pacman -S --needed base-devel git --noconfirm
    git clone https://aur.archlinux.org/paru.git /tmp/paru
    cd /tmp/paru && makepkg -si --noconfirm
    cd ~ && rm -rf /tmp/paru
fi

# Restore official packages
if [ -f ~/.config/explicit-packages.txt ]; then
    sudo pacman -S --needed - < ~/.config/explicit-packages.txt
fi

# Restore AUR packages
if [ -f ~/.config/aur-packages.txt ]; then
    awk '{print \}' ~/.config/aur-packages.txt | paru -S --needed -
fi

# Restore wallpaper system
mkdir -p ~/Videos/Wallpapers
chmod +x ~/.local/bin/wallpaper.sh 2>/dev/null

echo "=== Restore complete. Reboot recommended. ==="
