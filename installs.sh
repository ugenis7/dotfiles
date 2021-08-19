#!/bin/bash
sudo dnf install zsh
chsh -s $(which zsh)
sudo chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Necessary
sudo dnf install -y \
	gnome-shell-extension-pomodoro \
	gnome-tweaks \
	lato-fonts \
	adobe-source-code-pro-fonts \
	adobe-source-sans-pro-fonts \
	adobe-source-serif-pro-fonts \
	elementary-wallpapers-gnome \
	mozilla-fira-fonts-common \
	mozilla-fira-mono-fonts \
	mozilla-fira-sans-fonts \
	mozilla-zilla-slab-fonts \
	sorkintype-merriweather-fonts \
	google-noto-serif-fonts \
	google-noto-sans-fonts \
	fira-code-fonts \
	exfat-utils \
	fuse-exfat \
	gvfs-mtp \
	kernel-core \
	kernel-devel \
	kernel-modules \
	kernel-modules-extra \
	R \
	Thunar \
	Thunar-devel \
	Thunar-docs \
	mupdf \
	neovim \
	python3-neovim \
	gparted \
	dnf-plugin-system-upgrade \
	deja-dup \
	tlp \
	tlp-rdw

# Normal repositories
sudo dnf install \
	calibre \
	ffmpeg \
	gimp \
	inkscape \
	mediainfo \
	youtube-dl \
	nfoview \
	pandoc \
	mpv \
	ImageMagick

# Needed to install tidyverse and other R packages
sudo dnf install \
	openssl-devel \
	libcurl-devel \
	udunits2-devel \
	gdal \
	gdal-devel \
	proj \
	proj-devel \
	sqlite3-dbf \
	sqlite-devel \
	geos \
	geos-devel \
	unixODBC-devel \
	libpqxx-devel \
	netcdf-devel \
	udunits2-devel \
	cairo \
	cairo-devel \
	postgresql-devel
