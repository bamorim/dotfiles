#!/bin/sh
HOME=/home/bamorim

THIS=$(readlink -f "$0")
BASEPATH=$(dirname "$THIS")

iarg="-i"

while getopts f o
do
  case $o in
    f) iarg="";; # Disable -i argument
  esac
done

# Link home scripts (i.e. ~/.vimrc)

# Infer HOMESCRIPTS from this script path
HOMESCRIPTS=$BASEPATH/home
for f in $HOMESCRIPTS/*; do
  NAME=$(basename $f)
  echo "Linking home/$NAME to $HOME/.$NAME"
  ln -sfT $iarg $f $HOME/.$NAME
done

# Link scripts to ~/bin/scripts
echo "Creating $HOME/bin if it doesn't exist yet"
mkdir -p $HOME/bin
SCRIPTSPATH=$BASEPATH/scripts
echo "Linking scripts to $HOME/bin/scripts"
ln -sfT $iarg $SCRIPTSPATH $HOME/bin/scripts
