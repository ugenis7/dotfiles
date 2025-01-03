#!/bin/bash

# Set the path to your dotfiles Git repository
DOTFILES_REPO="$HOME/dotfiles"

# Set the path to the home directory
HOME_DIR="$HOME"

# Define the list of files to compare with absolute paths
FILES_TO_COMPARE=(
    "$DOTFILES_REPO/Rprofile:$HOME_DIR/.Rprofile"
    "$DOTFILES_REPO/feh/themes:$HOME_DIR/.config/feh/themes"
    "$DOTFILES_REPO/mpv/input.conf:$HOME_DIR/.config/mpv/input.conf"
    "$DOTFILES_REPO/mpv/mplayer-input.conf:$HOME_DIR/.config/mpv/mplayer-input.conf"
    "$DOTFILES_REPO/mpv/mpv.conf:$HOME_DIR/.config/mpv/mpv.conf"
    "$DOTFILES_REPO/vifm/vifmrc:$HOME_DIR/.vifm/vifmrc"
)

# Loop through the list of files
for file_pair in "${FILES_TO_COMPARE[@]}"; do
    # Split the file pair into repo_file and home_file
    IFS=':' read -r repo_file home_file <<< "$file_pair"

    # Compare the file contents
    if ! cmp --silent "$repo_file" "$home_file"; then
        echo "Different: $(basename "$repo_file")"
    elif [[ ! -e "$home_file" ]]; then
        echo "Missing: $(basename "$repo_file")"
    fi
done
