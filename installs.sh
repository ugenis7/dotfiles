#!/bin/bash
sudo dnf install zsh
chsh -s $(which zsh)
sudo chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sudo cp /home/ugenis/.zshrc ~

# Necessary
sudo dnf install -y baobab bleachbit deja-dup dnf-utils exfat-utils fuse-exfat gvfs-mtp gnome-shell-extension-pomodoro gnome-tweaks gnucash gparted gvim keepass kernel-core kernel-devel kernel-modules kernel-modules-extra mediawriter nextcloud-client R thunar unrar vim zsh

# Copr:
sudo dnf copr enable dperson/neovim
sudo dnf install neovim python3-neovim

# Normal repositories
sudo dnf install adobe-source-\* google-droid-sans-fonts google-roboto-\* calibre clementine ffmpeg gimp gpodder mediainfo picard puddletag soundkonverter xsane youtube-dl zathura filezilla lftp liferea lyx nfoview pandoc powertop remmina remmina-devel remmina-plugins-spice tmux texlive-\* mpv corebird tlp tlp-rdw

# Flatpak
* bookworm
* cozy
* frogr
* skypeforlinux
* hexchat
* Signal
* Telegram
* mendeley
* vlc
* google-chrome

# Other repositories
* Virtualbox
* Plex
* rstudio
