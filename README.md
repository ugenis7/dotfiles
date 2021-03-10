# Things to do to a fresh installation of Fedora

## First things first

```bash
sudo dnf update --refresh
```

## Theme:
- Apps: Flat-Remix-GTK-Blue
- Icons: Flat-Remix-Green
- GNOME Shell: Flat-Remis-Blue-fullPanel

## Extensions:
- AlternateTab
- Pomodoro
- Topicons plus
- User themes

## Fonts:
- Latin Modern Sans
- Source Sans Pro
- Source Serif Pro
- Source Code Pro
- Fira
- Iosevka Fixed

## Hotkeys:
- Firefox: Super + S
- Thunderbird: Super + Q
- Calculator: Super + C
- Keepassxc: Super + z
- Thunar: Super + F
- Terminal: Super + T
- Minimize: Super + Down
- Hide windows: Super + D
- Toggle maximize: Super + up
- Fullscreen mode: F11
- Hide window: Super + down


## Enable RPM Fedora Fusion

```bash
sudo dnf install --nogpgcheck https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-33.noarch.rpm
sudo dnf install --nogpgcheck https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-t1.noarch.rpm
```

## Install codecs

```bash
sudo dnf install gstreamer-plugins-bad gstreamer-plugins-bad-free-extras \
	gstreamer-plugins-bad-nonfree gstreamer-plugins-ugly gstreamer-ffmpeg \
	gstreamer1-libav gstreamer1-plugins-bad-free-extras \
	gstreamer1-plugins-bad-freeworld gstreamer1-plugins-base-tools \
	gstreamer1-plugins-good-extras gstreamer1-plugins-ugly \
	gstreamer1-plugins-bad-free gstreamer1-plugins-good \
	gstreamer1-plugins-base gstreamer1
```

# Install software

## Everywhere
- Deja Dup
- Thunderbird
- Peazip
- Foliate
- Joplin
- KeePassXC
- Neovim
- R
- Pandoc
- GIMP
- Inkscape
- VLC
- Mupdf
- Thunar
- Zsh
- Zotero
- Zoom
- Oh-my-zsh

## At home
- Audacity
- Bleachbit
- Calibre
- Cozy
- Gnucash
- Signal
- Telegram
- Skype
- Snes9x
- SoundKonverter
- Qbittorrent
- Srain
- Quod libet
- mpv

# R packages
Tidyverse
Janitor
