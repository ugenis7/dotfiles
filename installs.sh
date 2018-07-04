#!/bin/bash
sudo dnf install zsh
chsh -s $(which zsh)
sudo chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sudo cp /home/ugenis/.zshrc ~

sudo dnf install -y

Important:
baobab
bleachbit
deja-dup
dnf-utils
exfat-utils
fuse-exfat
gvfs-mtp
gnome-shell-extension-pomodoro
gnome-tweaks
gnucash
gparted
gvim
keepass
kernel-core
kernel-devel
kernel-modules
kernel-modules-extra
mediawriter
* neovim copr
nextcloud-client
R
thunar
unrar
vim
zsh


Fonts:
adobe-source-\*
google-droid-sans-fonts
google-roboto-\*

Multimedia:
* Audacity
* bookworm
calibre
clementine
* cozy
ffmpeg
* frogr
gimp
gpodder
mediainfo
* mpv
picard
puddletag
soundkonverter
xsane
* vlc
youtube-dl
zathura

Internet:
flatpak install corebird
filezilla
lftp
liferea
* skypeforlinux
thunderbird
* Plex
* google-chrome
* hexchat or polari
* Signal
* Telegram

Development:
lyx
* mendeley
nfoview
pandoc
powertop
remmina
remmina-devel
remmina-plugins-spice
* rstudio
texlive-\*
tlp
tlp-rdw
tlp-release
tmux

* Virtualbox
