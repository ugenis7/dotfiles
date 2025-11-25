#!/usr/bin/env bash
file="$1"
session="$(basename "$file")"

tmux new-session -d -s "$session" "vim \"$file\""
kitty tmux attach-session -t "$session"

