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

AUR_PACKAGES=(
  1password-cli
  altair # GraphQL Client
  beekeeper-studio-appimage
  chatterino # Twitch chat client
  direnv
  dust-bin # Faster alternative to du
  everdo # GTD TODO app
  glow-bin # Markdown CLI viewer
  gnome-shell-extension-appindicator-git
  gnome-shell-extension-arch-update
  gnome-shell-extension-gsconnect
  gnome-shell-extension-openweather-git
  gnome-shell-extension-pop-shell
  gnome-shell-extension-system-monitor-git
  google-chrome
  google-cloud-sdk
  green-recorder
  heroku-cli-bin
  insomnia-bin
  insync # To sync with OneDrive
  jetbrains-toolbox
  kind # Local kubernetes running in docker
  lbry-app-bin # Distributed YouTube Alternative
  logiops-git
  ngrok
  obinskit # To configure Anne Pro 2 Keyboard
  obs-studio-browser
  pulumi-bin
  slack-desktop
  spotify
  sshping
  streamlink-twitch-gui
  tealdeer # Faster tldr replacement
  teamviewer
  texlive-latexindent-meta
  ttf-twemoji
  visual-studio-code-bin
  ytop-bin # Modern top alternative
  zoom
)

yay -Syy
yay -S --needed "${PACKAGES[@]}"
yay -S --needed "${AUR_PACKAGES[@]}"
