#!/bin/env bash

if ! cmp --silent "~/dotfiles/feh/themes" "~/.config/feh/themes"; then
	echo "Different: feh/themes"
fi

if ! cmp --silent "~/dotfiles/Rprofile" "~/.Rprofile"; then
	echo "Different: Rprofile"
fi
