#!/bin/sh

BAT=BAT1
BATPATH=/sys/class/power_supply/$BAT

notify-send -t 30 -i battery-caution -u low "Battery Monitoring on $BAT is up"

LAST=100
while true
do
  CAPACITY=`cat $BATPATH/capacity`

  # Alert on less than 15
  if [ $LAST -gt $CAPACITY ] && [ $CAPACITY -le 15 ]; then
    export DISPLAY=":0"
    notify-send -t 30 -i battery-low -u critical "Battery Low!" "Battery is at $CAPACITY%.\nPlease plug in the charger adapter."
  fi

  # Alert for suspending on 3%
  if [ $CAPACITY -le 3 ]; then
    notify-send -t 30 -i battery-empty -u critical "Battery is EXTREMELY LOW." "Computer will suspend soon. Find the charger now, dude!"
  fi

  # Suspend on 2%
  if [ $CAPACITY -le 2 ]; then
    systemctl suspend
  fi
  LAST=$CAPACITY
  sleep 5
done


