#!/bin/env sh

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
  nerd-fonts-complete
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
yay -S --needed "${AUR_PACKAGES[@]}"
