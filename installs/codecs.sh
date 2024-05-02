#!/bin/env bash
#
sudo dnf -y install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

sudo dnf -y config-manager --enable fedora-cisco-openh264

sudo dnf -y groupupdate core

sudo dnf -y swap ffmpeg-free ffmpeg --allowerasing

sudo dnf -y groupupdate multimedia --setopt="install_weak_deps=False" --exclude=PackageKit-gstreamer-plugin

sudo dnf -y groupupdate sound-and-video

sudo dnf -y install intel-media-driver rpmfusion-free-release-tainted libdvdcss rpmfusion-nonfree-release-tainted

sudo dnf -y --repo=rpmfusion-nonfree-tainted install "*-firmware"
