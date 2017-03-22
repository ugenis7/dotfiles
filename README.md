# Things to do to a fresh installation of Fedora 25
## First things first
```bash
sudo visudo
## Same thing without a password
# %wheel        ALL=(ALL)       NOPASSWD: ALL
user            ALL=(ALL)       NOPASSWD: ALL
sudo dnf update
```
# Theme:

MurrinaCandy
Bruma (icons)
Bluebird

hotkeys:
- web browser
- email
- calculator
- keepassx
- thunar
- app-finder
- Terminal
- Maximize
- Minimize
- Move to other workspace
- Show desktop


# Enable RPM Fedora Fusion
```bash
sudo dnf install --nogpgcheck https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-25.noarch.rpm
sudo dnf install --nogpgcheck https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-25.noarch.rpm
```

# Install the C Development tools
```bash
sudo dnf groupinstall 'Development Tools'
sudo dnf groupinstall 'C Development Tools and Libraries'
sudo dnf install git
```

Fonts, themes and icons
```bash
sudo dnf install gstreamer-plugins-bad gstreamer-plugins-bad-free-extras gstreamer-plugins-bad-nonfree gstreamer-plugins-ugly gstreamer-ffmpeg gstreamer1-libav gstreamer1-plugins-bad-free-extras gstreamer1-plugins-bad-freeworld gstreamer1-plugins-base-tools gstreamer1-plugins-good-extras gstreamer1-plugins-ugly gstreamer1-plugins-bad-free gstreamer1-plugins-good gstreamer1-plugins-base gstreamer1
```

# Accesorios
* Gaclulator
* KeePassX
* Mousepad
* eMacs
* redshift
* Bleachbit

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
