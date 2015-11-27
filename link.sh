#!/bin/sh
HOME=/home/bamorim

THIS=$(readlink -f "$0")
BASEPATH=$(dirname "$THIS")

# -i makes the ln to be interactive, asking on replacing a link.
iarg="-i"

while getopts f o
do
  case $o in
    f) iarg="";; # Disable -i argument
  esac
done

# Link home scripts (i.e. ~/.vimrc)

# Infer HOMEDOTFILES from this script path
HOMEDOTFILES=$BASEPATH/home
for f in $HOMEDOTFILES/*; do
  NAME=$(basename $f)
  echo "Linking home/$NAME to $HOME/.$NAME"
  ln -sfT $iarg $f $HOME/.$NAME
done

# Link config to ./config
CONFIGPATH=$BASEPATH/config
for f in $CONFIGPATH/*; do
  NAME=$(basename $f)
  echo "Linking config/$NAME to $HOME/.config/$NAME"
  ln -sfT $iarg $f $HOME/.config/$NAME
done

# Link scripts to ~/bin/scripts
echo "Creating $HOME/bin if it doesn't exist yet"
mkdir -p $HOME/bin
SCRIPTSPATH=$BASEPATH/scripts
echo "Linking scripts to $HOME/bin/scripts"
ln -sfT $iarg $SCRIPTSPATH $HOME/bin/scripts
