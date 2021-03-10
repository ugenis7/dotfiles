#!/bin/bash
sudo dnf install zsh
chsh -s $(which zsh)
sudo chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sudo cp /home/ugenis/.zshrc ~

# Necessary
sudo dnf install -y deja-dup \
	exfat-utils fuse-exfat gvfs-mtp \
	gnome-shell-extension-pomodoro \
	gnome-tweaks \
	gparted \
	keepassxc \
	kernel-core kernel-devel kernel-modules kernel-modules-extra \
	R \
	thunar \
	mupdf \
	neovim python3-neovim

# Normal repositories
sudo dnf install calibre ffmpeg gimp inkscape mediainfo youtube-dl nfoview pandoc powertop tmux texlive-\* mpv tlp tlp-rdw

# Needed to install tidyverse
sudo dnf install openssl-devel libcurl-devel

# needed to install sf for r
sudo dnf install gdal gdal-devel proj-devel proj libproj-devel proj-\* geos geos-devel libpqxx-devel netcdf-devel udunits2-devel cairo cairo-devel unixODBC-devel 

# Flatpak
#* skypeforlinux
#* Signal
#* Telegram

# Other repositories
#* Virtualbox
