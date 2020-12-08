#!/bin/env sh

[ -d ~/.asdf ] || git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.8.0

PLUGINS=(
  elixir
  erlang
  nodejs
  python
  ruby
)

INSTALLED_PLUGINS=$(asdf plugin-list)

for plugin in "${PLUGINS[@]}"; do
  if ! grep -q "^$plugin$" <<< "$INSTALLED_PLUGINS"; then
    asdf plugin-add $plugin
  fi
done

asdf install erlang 23.0.4
asdf install elixir 1.11.2-otp-23

# Use system versions for python, ruby and nodejs by default
asdf global python system
asdf global ruby system
asdf global nodejs system

# Set something to other languages
asdf global erlang 23.0.4
asdf global elixir 1.11.2-otp-23