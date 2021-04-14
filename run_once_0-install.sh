#!/bin/env sh

PACKAGES=(
  android-tools
  ansible
  audacity
  aws-cli
  base-devel
  bat # Fancier cat alternative
  calibre
  curl
  dbeaver
  discord
  docker
  docker-compose
  evince
  fd # Faster alternative to find
  firefox
  fzf
  gimp
  gist
  git
  github-cli
  glu # Erlang wxWidgets
  gnupg
  handbrake
  helm
  htop # top alternative
  httpie 
  hyperfine
  inkscape
  inotify-tools
  jdk-openjdk
  jre-openjdk
  kdenlive
  kitty
  krita
  kubectl
  kubectx
  libpng # Erlang wxWidgets
  mesa # Erlang wxWidgets
  mkcert
  mpv # Lightweight video player
  neofetch
  pinta
  postgresql
  procs # Modern alternative to ps
  qrencode
  remmina # Remote desktop client with RDP, VNC and other protocols
  ripgrep
  rustup
  shellcheck
  solaar
  starship
  streamlink
  swaks # CLI for testing SMTP servers
  telegram-desktop
  terraform
  texlive-most
  thefuck
  tmux
  tokei # Fast programming language analysis
  ttf-fira-code
  ttf-joypixels
  unrar
  vim
  vlc
  websocat # CLI client for websockets
  wget
  wxgtk2 # Erlang wxWidgets
  youtube-dl
  zsh
)

yay -Syy
yay -S --needed "${PACKAGES[@]}"
