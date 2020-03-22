#!/bin/bash
sudo dnf install zsh
chsh -s $(which zsh)
sudo chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sudo cp /home/ugenis/.zshrc ~

# Necessary
sudo dnf install -y baobab bleachbit deja-dup dnf-utils exfat-utils fuse-exfat gvfs-mtp gnome-shell-extension-pomodoro gnome-tweaks gparted keepass kernel-core kernel-devel kernel-modules kernel-modules-extra mediawriter R thunar unrar vim zsh mupdf neovim python3-neovim

# Normal repositories
sudo dnf install adobe-source-\* google-droid-sans-fonts google-roboto-\* calibre ffmpeg gimp inkscape mediainfo youtube-dl nfoview pandoc powertop tmux texlive-\* mpv tlp tlp-rdw

# Needed to install tidyverse
sudo dnf install openssl-devel libcurl-devel libxml2-devel

# needed to install sf for r
sudo dnf install gdal gdal-devel proj-devel proj libproj-devel proj-\* geos geos-devel libpqxx-devel netcdf-devel udunits2-devel cairo cairo-devel unixODBC-devel 

# Flatpak
#* skypeforlinux
#* Signal
#* Telegram

# Other repositories
#* Virtualbox
