#!/bin/env sh

pkill polybar
# sleep 1;
# polybar i3wmthemer_bar &

DEFAULT_NETWORK_INTERFACE=$(ip route | grep '^default' | awk '{print $5}' | head -n1)

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload i3bar &
  done
else
  polybar --reload example &
fi

