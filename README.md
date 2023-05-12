# Things to do to a fresh installation of Fedora

## First things first

```bash
sudo vi /etc/dnf/dnf.conf
```

Add these lines:

deltarm=true
max_parallel_downloads=20

```bash
sudo dnf update --refresh -y
```

```bash
sudo dnf install --nogpgcheck https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-38.noarch.rpm
sudo dnf install --nogpgcheck https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-t1.noarch.rpm
```


## Theme:

- Cursor: Breeze Snow
- Apps: Flat-Remix-Orange-Dark
- Icons: Flat-Remix-Orange-Dark-fullPanel
- GNOME Shell: Flat-Remix-Organe-Dark-fullPanel

## Extensions:

- Pomodoro
- Appindicator and KStatusNotifierItem Support
- Coverflow alt-tab
- Notification Banner Reloaded
- User themes

## Fonts:

- Interfaz: Lato Medium 12
- Documento: Libre Caslon Text Regular 12
- Monoespaciado: Fira Code Retina 15
- Heredadas: Noto Sans Display Regular 15
- Escalado: 1.20

Also cool:
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

- Hide window: Super + down
- Hide windows: Super + D
- Toggle maximize: Super + up
- Fullscreen mode: F11

- Calculator: Super + C
- Keepassxc: Super + z
- Thunar: Super + F
- Kitty: Super + T
- Firefox: Super + s

## Install codecs

```bash
sudo dnf install \
	gstreamer-ffmpeg \
	gstreamer1-libav \
	gstreamer1-plugins-good \
	gstreamer1-plugins-base gstreamer1 \
	gstreamer1-plugins-base-tools \
	gstreamer1-plugins-good-extras \
	gstreamer1-plugins-bad-free \
	gstreamer1-plugins-bad-free-extras \
	gstreamer1-plugins-bad-freeworld \
	gstreamer-plugins-bad \
	gstreamer-plugins-bad-free-extras
```

```bash
sudo dnf install \
	gstreamer-plugins-ugly \
	gstreamer1-plugins-ugly \
	gstreamer-plugins-bad-nonfree
```

# Install software

- Bleachbit
- Cozy
- Darktable
- Deja Dup
- FileZilla
- Foliate
- GIMP
- GParted
- Inkscape
- KeePassXC
- Kitty
- Mpv
- Mupdf
- Neovim
- Nextcloud
- Oh-my-zsh
- PDF Mod
- Pandoc
- Peazip
- QGIS
- R
- SoundKonverter
- Telegram
- Thunar
- VLC
- Zotero
- Zsh

# R packages

- tidyverse
- lubridate
- Benchmarking
- RColorBrewer
- XML
- broom
- foreign
- frontier
- gghighlight
- ggrepel
- ggridges
- hasseDiagram
- httr
- jsonlite
- knitr
- lmtest
- modelr
- npsf
- openxlsx
- pals
- readxl
- rjson
- rjstat
- scales
- sf
- stringr
- tidyquant
- writexl
- xtable
