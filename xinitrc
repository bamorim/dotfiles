eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK

xrdb -merge ~/.Xresources
sh ~/.fehbg &
dbus-launch thunar --daemon &
dunst &
nm-applet &
start-pulseaudio-x11 &
exec i3
