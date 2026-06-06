source /usr/share/cachyos-fish-config/cachyos-config.fish

# overwrite greeting
# potentially disabling fastfetch
set -gx XCURSOR_SIZE 48
set -gx XCURSOR_THEME Adwaita
function fish_greeting
     ~/.local/bin/fetch.sh
end

set -gx DRI_PRIME 1
set -gx VK_ICD_FILENAMES /usr/share/vulkan/icd.d/radeon_icd.x86_64.json
set -gx ROCR_VISIBLE_DEVICES 1
set -gx ROCR_VISIBLE_DEVICES 1
set -gx HSA_OVERRIDE_GFX_VERSION 11.0.2

# Dotfiles bare repo alias
function dotfiles
    /usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME $argv
end
