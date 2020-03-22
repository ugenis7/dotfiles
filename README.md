# Things to do to a fresh installation of Fedora

## First things first

```bash
sudo dnf update --refresh
```

## Theme:
- Apps: GNOME-PRO
- Cursors: Capitaine-cursors
- Icons: Oxygen

## Extensions:
- AlternateTab
- Pomodoro
- Topicons plus
- User themes

## Fonts:
- Latin Modern Sans
- Iosevka Fixed

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
sudo dnf install --nogpgcheck https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-31.noarch.rpm
sudo dnf install --nogpgcheck https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-t1.noarch.rpm
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

# Install software

- KeePass
- Thunderbird
- Thunar
- Neovim
- Bleachbit
- GIMP
- Inkscape
- VLC
- mpv
- Calibre
- texmaker
- Zsh
- Oh-my-zsh
- Bleachbit
- catfish
- disk usage analyser
- cpu-g
- peazip
- Rambox
- Mupdf
