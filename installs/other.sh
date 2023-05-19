#!/bin/env bash

sudo dnf install -y \
	ffmpeg \
	mediainfo \
	nfoview \
	exiftool \
	gimp \
	inkscape \
	ImageMagick

pip install yt-dlp
