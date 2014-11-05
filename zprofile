# Set variables that will be also available on GUI
source $HOME/.passwords.sh
export PATH=$PATH:/usr/local/bin:/usr/bin:/bin:/usr/local/games:/home/bamorim/bin:/home/bamorim/bin/scripts
export PATH="/usr/local/heroku/bin:$PATH"
export PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx

eval "$(direnv hook zsh)"
