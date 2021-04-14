# Dotfiles

My own set of dotfiles using [chezmoi].

All secrets are stored in [1Password].

## Setup on Arch Linux

1. Install [yay] manually
2. Run `yay -S chezmoi 1password-cli` to install [chezmoi] and [1Password CLI]
3. Run `eval $(op login <DOMAIN> <EMAIL> <MASTER_KEY>)` to login to [1Password CLI]
4. Run `chezmoi diff` to see what will change
5. Run `chezmoi apply` to create files and run "run scripts"


[chezmoi]: https://github.com/twpayne/chezmoi
[yay]: https://aur.archlinux.org/packages/yay
[1Password]: https://1password.com/
[1Password CLI]: https://1password.com/downloads/command-line/