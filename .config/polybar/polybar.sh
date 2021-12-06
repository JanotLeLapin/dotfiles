#!/bin/env sh

pkill polybar
# sleep 1;
# polybar i3wmthemer_bar &

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload i3bar &
  done
else
  polybar --reload example &
fi

