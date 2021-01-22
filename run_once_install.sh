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
  evince
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
  mpv # Lightweight video player
  neofetch
  pinta
  postgresql
  qrencode
  ripgrep
  rustup
  shellcheck
  solaar
  streamlink
  swaks # CLI for testing SMTP servers
  telegram-desktop
  texlive-most
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
  chatterino
  direnv
  dust-bin
  gnome-shell-extension-appindicator-git
  gnome-shell-extension-arch-update
  gnome-shell-extension-gsconnect
  gnome-shell-extension-openweather-git
  gnome-shell-extension-pop-shell
  gnome-shell-extension-system-monitor-git
  google-chrome
  google-cloud-sdk
  green-recorder
  heroku-cli
  insomnia
  jetbrains-toolbox
  kind # Local kubernetes running in docker
  logiops-git
  ngrok
  obinskit
  obs-studio-browser
  procs-bin
  pulumi-bin
  slack-desktop
  spotify
  sshping
  streamlink-twitch-gui
  tealdeer
  texlive-latexindent-meta
  ttf-twemoji
  visual-studio-code-bin
  ytop-bin
  zoom
)

yay -Syy
yay -S --needed "${PACKAGES[@]}"
yay -S --needed "${AUR_PACKAGES[@]}"
