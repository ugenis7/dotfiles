# Things to do to a fresh installation of Fedora

## First things first

```bash
sudo dnf update --refresh
```

## Theme:
- Apps: NewAdwaita-Slim
- Icons: Flat-Remix-Green
- GNOME Shell: Flat-Remix-Blue-fullPanel
- Background: tri-fadeno.jpg

## Extensions:
- Pomodoro
- Coverflow alt-tab
- gTile
- OpenWeather
- Trayicons Reloaded
- User themes

## Fonts:
- Source Sans Pro
- Source Serif Pro
- Source Code Pro
- Fira
- Zilla slab
- Iosevka Fixed
- Merriweather
- Noto Serif
- Noto Sans

## Hotkeys:
- Chrom: Super + S
- Calculator: Super + C
- Keepassxc: Super + z
- Thunar: Super + F
- Kitty: Super + T
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
sudo dnf install \
	gstreamer-plugins-bad \
	gstreamer-plugins-bad-free-extras \
	gstreamer-plugins-bad-nonfree \
	gstreamer-plugins-ugly \
	gstreamer-ffmpeg \
	gstreamer1-libav \
	gstreamer1-plugins-bad-free-extras \
	gstreamer1-plugins-bad-freeworld \
	gstreamer1-plugins-base-tools \
	gstreamer1-plugins-good-extras \
	gstreamer1-plugins-ugly \
	gstreamer1-plugins-bad-free \
	gstreamer1-plugins-good \
	gstreamer1-plugins-base gstreamer1
```

# Install software
- Bleachbit
- Calibre
- Cozy
- Darktable
- Dropbox
- Deja Dup
- FileZilla
- Foliate
- GIMP
- gitg
- Gnucash
- Google-Chrome
- GParted
- Inkscape
- Joplin
- KeePassXC
- Kitty
- mpv
- Mupdf
- Nextcloud
- Neovim
- Oh-my-zsh
- Pandoc
- PDF Mod
- Peazip
- Pitivi
- Podcasts
- Qbittorrent
- Quod libet
- QGIS
- R
- Signal
- Spotify
- Skype
- SoundKonverter
- Srain
- Telegram
- Thunar
- VLC
- Virtualbox
- Zoom
- Zotero
- Zsh

# R packages
tidyverse
lubridate
Benchmarking
RColorBrewer
XML
broom
foreign
frontier
gghighlight
ggrepel
ggridges
hasseDiagram
httr
jsonlite
knitr
lmtest
modelr
npsf
openxlsx
pals
readxl
rjson
rjstat
scales
sf
stringr
tidyquant
writexl
xtable

# Acciones personalizadas

Separar: /home/ugenis/dotfiles/pdfsep.sh %f
Unir: pdfunite %F $(mktemp -p %d --suffix=.pdf Merged_pdf_XXXXXX)
