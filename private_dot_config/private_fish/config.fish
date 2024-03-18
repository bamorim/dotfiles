if status is-interactive
    # Commands to run in interactive sessions can go here
end

function lsr
  ls -aR $1 | awk '
    /:$/&&f{s=$0;f=0}
    /:$/&&!f{sub(/:$/,"");s=$0;f=1;next}
    NF&&f{ print s"/"$0 }' | grep '[^\\.]$' --color=never
end

function warn
  set YELLOW '\033[0;33m'
  set NC '\033[0m'

  echo -e $YELLOW"Warning: "$argv"$NC"
end

fish_add_path $HOME/go/bin
fish_add_path "$HOME/Library/Application Support/JetBrains/Toolbox/scripts"
fish_add_path $HOME/.cargo/bin 
