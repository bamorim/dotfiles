# Set variables that will be also available on GUI
source $HOME/.passwords.sh
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/local/games:/home/bamorim/bin:/home/bamorim/bin/scripts:$PATH
export PATH="/usr/local/heroku/bin:$PATH"
export PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx

eval "$(direnv hook zsh)"
