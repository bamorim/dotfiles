#!/bin/env sh

PACKAGES=(
  android-tools
  audacity
  aws-cli
  base-devel
  bat
  curl
  dbeaver
  discord
  docker
  docker-compose
  fd
  firefox
  gimp
  gist
  git
  github-cli
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

AUR_PACKAGES=(
  1password-cli
  act
  beekeeper-studio-appimage
  direnv
  dust-bin
  gnome-shell-extension-appindicator-git
  gnome-shell-extension-arch-update
  gnome-shell-extension-gsconnect
  gnome-shell-extension-openweather-git
  gnome-shell-extension-pop-shell-git
  gnome-shell-extension-system-monitor-git
  google-chrome
  google-cloud-sdk
  green-recorder
  heroku-cli
  jetbrains-toolbox
  logiops-git
  obinskit
  procs-bin
  pulumi-bin
  slack-desktop
  spotify
  sshping
  tealdeer
  ttf-twemoji
  visual-studio-code-bin
  ytop-bin
  zoom
)

yay -Syy
yay -S --needed "${PACKAGES[@]}"
yay -S --needed "${AUR_PACKAGES[@]}"