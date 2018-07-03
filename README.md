# Things to do to a fresh installation of Fedora

## First things first
```bash
sudo dnf update --refresh
```
## Theme:
Apps: GNOME-PRO-LighterBlue-1.2
Cursors: Capitaine-cursors
Icons: Oxygen

## Extensions:
- AlternateTab
- Pomodoro
- Topicons plus
- User themes

## Fonts:
Lora

## Hotkeys:
- Firefox: Super + S
- Thunderbird: Super + Q
- Calculator: Super + C
- Keepass: Super + z
- Thunar: Super + F
- Terminal: Super + T
- Minimize: Super + Down
- Show desktop: Super + D


## Enable RPM Fedora Fusion
```bash
sudo dnf install --nogpgcheck https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-28.noarch.rpm
sudo dnf install --nogpgcheck https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-28.noarch.rpm
```

## Install the C Development tools
```bash
sudo dnf groupinstall 'Development Tools'
sudo dnf groupinstall 'C Development Tools and Libraries'
sudo dnf install git
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

# Accesorios
* KeePass
* Bleachbit
* Liferea

# Trabajo
* Haroopad
* RStudio
* WxMaxima
* gretl
* geogebra
* qtOctave

# Graficos
* GIMP

# Internet
* HexChat
* Skype
* Owncloud
* FileZilla
* remmina
* Thunderbird

# Multimedia
* clementine
* VLC
* kodi
* easytag
* spotify

# Oficina
* Calibre
* Libreoffice
* lyx
* gnucash
* texmaker

# Sistema
* Zsh
* Oh-my-zsh
* Bleachbit
* catfish
* disk usage analyser
* cpu-g
* peazip
