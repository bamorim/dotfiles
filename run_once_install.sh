#!/bin/env sh

PACKAGES=(
  android-tools
  audacity
  aws-cli
  base-devel
  bat
  curl
  dbeaver
  direnv
  discord
  docker-compose
  fd
  firefox
  gimp
  gist
  git
  glu # Erlang wxWidgets
  gnupg
  handbrake
  htop
  hyperfine
  inkscape
  inotify-tools
  jre-openjdk
  kdenlive
  kitty
  krita
  kubectl
  kubectx
  libpng # Erlang wxWidgets
  mesa # Erlang wxWidgets
  neofetch
  pinta
  postgresql
  qrencode
  ripgrep
  rustup
  shellcheck
  solaar
  telegram-desktop
  thefuck
  tmux
  tokei
  ttf-fira-code
  ttf-joypixels
  unrar
  vim
  vlc
  wget
  wxgtk2 # Erlang wxWidgets
  youtube-dl
  zsh
)

sudo pacman -Syy
sudo pacman -S --needed "${PACKAGES[@]}"

[ -d ~/.asdf ] || git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.8.0