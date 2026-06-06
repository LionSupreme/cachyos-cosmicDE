# CachyOS + COSMIC DE — Dotfiles

**Machine:** Framework 16
**CPU:** AMD Ryzen 7 7840HS
**GPU:** AMD Radeon RX 7700S (discrete) + Radeon 780M (integrated)
**RAM:** 19.33 GiB DDR5 dual-channel
**OS:** CachyOS (Arch-based)
**DE:** COSMIC 1.0.0
**WM:** cosmic-comp (Wayland)
**Shell:** fish 4.7.1
**Kernel:** linux-cachyos

## Displays
| Port | Resolution | Refresh |
|------|------------|--------|
| DP-1 / DP-5 | 1920x1080 | 60Hz (External) |
| DP-4 (Samsung 43") | 3840x2160 | 120Hz (External) |
| eDP-2 (Built-in) | 2560x1600 | 165Hz |

## Key Apps
| App | Source |
|-----|--------|
| brave-origin-nightly-bin | AUR |
| zen-browser-bin | AUR |
| mullvad-vpn | AUR |
| synergy | AUR |
| mpvpaper-git | AUR |
| vesktop-bin | AUR |
| portmaster-bin | AUR |
| mangohud | AUR |
| corectrl | AUR |
| handbrake | AUR |
| jellyfin-server | AUR |
| com.discordapp.Discord | Flatpak |
| com.spotify.Client | Flatpak |
| com.valvesoftware.Steam | Flatpak |
| com.heroicgameslauncher.hgl | Flatpak |
| io.missioncenter.MissionCenter | Flatpak |

## Notable Config
- **Live wallpapers:** mpvpaper with per-display shuffle playlists (DP-4 + eDP-2 only)
- **dGPU acceleration:** DRI_PRIME=1 on Brave, Zen via .desktop overrides
- **AMD GTT memory:** 8192MB via /etc/modprobe.d/amdgpu.conf
- **iGPU UMA buffer:** 4GB (BIOS Gaming mode)
- **zram:** zstd compression, vm.swappiness=10
- **Battery limit:** 50% via framework_tool
- **AUR helper:** paru

## Restore
\`\`\`fish
git clone --bare https://github.com/LionSupreme/cachyos-cosmicDE.git $HOME/.dotfiles
function dotfiles
    /usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME $argv
end
dotfiles checkout
dotfiles config --local status.showUntrackedFiles no
\`\`\`
