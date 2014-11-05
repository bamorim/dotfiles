#!/bin/sh

BAT=BAT1
BATPATH=/sys/class/power_supply/$BAT

LAST=100
while true
do
  CAPACITY=`cat $BATPATH/capacity`

  # Alert on less than 15
  if [ $LAST -gt $CAPACITY ] && [ $CAPACITY -le 15 ]; then
    export DISPLAY=":1"
    notify-send -t 30 -u critical "Battery Low!" "Battery is at $CAPACITY%.\nPlease plug in the charger adapter."
  fi

  # Suspend on 2%
  if [ $1 -le 2 ]; then
    systemctl suspend
  fi
  LAST=$CAPACITY
  sleep 5
done


