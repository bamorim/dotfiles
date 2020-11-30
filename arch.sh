#!/bin/bash

# Update repositories
sudo pacman -Syy

# Install packages with pacman
sudo pacman -S \
	git \
	ffmpeg \
	imagemagick \
	handbrake \
	obs-studio \
	kdenlive \
	code \
	base-devel \
	libssh \
	ncurses \
	glu \
	mesa \
	wxgtk2 \
	libpng \
	unixodbc \
	vim \
	zsh \
	docker-compose \
	aws-cli \
	unzip

# Setup oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Setup dotfiles
./link.sh -f

# Install ASDF-VM
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.7.8
