#!/bin/bash

# Update apt
sudo apt-get update -y

# Add gcloud repository
sudo apt-get install -y apt-transport-https ca-certificates gnupg curl
echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key --keyring /usr/share/keyrings/cloud.google.gpg add -
sudo apt-get update -y

# Install packages with apt-get
sudo apt-get install -y \
	build-essential \
	git \
	ffmpeg \
	zlib1g-dev \
	liblzma-dev \
	autoconf \
	bison \
	libssl-dev \
	libyaml-dev \
	libreadline-dev \
	libncurses5-dev \
	libffi-dev \
	libgdbm6 \
	libgdbm-dev \
	libdb-dev \
	unzip \
	libsqlite3-dev \
	wget \
	curl \
	llvm \
	xz-utils \
	tk-dev \
	libxml2-dev \
	libxmlsec1-dev \
	libwxgtk3.0-gtk3-dev \
	libgl1-mesa-dev \
	libglu1-mesa-dev \
	libpng-dev \
	libssh-dev \
	unixodbc-dev \
	xsltproc \
	fop \
	vim \
	zsh \
	docker-compose \
	awscli

# Setup oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Setup homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Setup dotfiles
./link.sh -f

# Install ASDF-VM
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.7.8

# Install brew packages
eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
brew bundle -v --global

# Install snap packages
snap install google-cloud-sdk --classic
snap install telegram-desktop
snap install thunderbird
snap install slack
snap install discord

# Set zsh as default shell
echo "Input your password to change shell to zsh"
chsh -s $(which zsh)
