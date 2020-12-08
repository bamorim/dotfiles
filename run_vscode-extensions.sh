#!/bin/env sh

EXTENSIONS=(
  alexkrechik.cucumberautocomplete
  bbenoist.vagrant
  bibhasdn.unique-lines
  bradlc.vscode-tailwindcss
  bungcip.better-toml
  cssho.vscode-svgviewer
  danhuynhdev.sorbet-lsp
  eamodio.gitlens
  Equinusocio.vsc-community-material-theme
  Equinusocio.vsc-material-theme
  equinusocio.vsc-material-theme-icons
  esbenp.prettier-vscode
  faustinoaq.crystal-lang
  firefox-devtools.vscode-firefox-debug
  foam.foam-vscode
  GitHub.vscode-pull-request-github
  golang.go
  henoc.svgeditor
  humao.rest-client
  JakeBecker.elixir-ls
  joaompinto.vscode-graphviz
  johnpapa.vscode-peacock
  karigari.chat
  kortina.vscode-markdown-notes
  letmaik.git-tree-compare
  marcelovelasquez.flutter-tree
  marp-team.marp-vscode
  mikestead.dotenv
  ms-azuretools.vscode-docker
  ms-dotnettools.csharp
  ms-kubernetes-tools.vscode-kubernetes-tools
  ms-python.python
  ms-toolsai.jupyter
  ms-vscode-remote.remote-containers
  ms-vscode-remote.remote-ssh
  ms-vscode-remote.remote-ssh-edit
  ms-vscode-remote.remote-wsl
  ms-vscode-remote.vscode-remote-extensionpack
  ms-vsliveshare.vsliveshare
  ms-vsliveshare.vsliveshare-audio
  ms-vsliveshare.vsliveshare-pack
  octref.vetur
  philipbe.theme-gray-matter
  PKief.material-icon-theme
  Prisma.prisma
  redhat.vscode-yaml
  ricard.postcss
  rust-lang.rust
  samuelcolvin.jinjahtml
  sianglim.slim
  silvenon.mdx
  sleistner.vscode-fileutils
  stkb.rewrap
  tchayen.markdown-links
  tintinweb.graphviz-interactive-preview
  tootone.org-mode
  wingrunr21.vscode-ruby
  wmaurer.change-case
  xyc.vscode-mdx-preview
  yzhang.markdown-all-in-one
  zxh404.vscode-proto3
)

INSTALLED_EXTENSIONS=$(code --list-extensions)

for extension in "${EXTENSIONS[@]}"; do
  if ! grep -q "^$extension$" <<< "$INSTALLED_EXTENSIONS"; then
    code --install-extension $extension
  fi
done