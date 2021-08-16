# Dotfiles

My own set of dotfiles using [chezmoi].

All secrets are stored in [1Password].

## Setup on Arch Linux

### Requirements
- PGP keys for `bernardo.amorim@saltpay.co` and `contato@bamorim.com`
- gpg, [yay], [chezmoi] and [1Password CLI]

### Running

1. Login to [1Password CLI] with `eval $(op login)`
2. Run `chezmoi init` to clone repo and generate `chezmoi.toml`
3. Run `chezmoi diff` to see what will change
4. Run `chezmoi apply` to apply the changes


[chezmoi]: https://github.com/twpayne/chezmoi
[yay]: https://aur.archlinux.org/packages/yay
[1Password]: https://1password.com/
[1Password CLI]: https://1password.com/downloads/command-line/