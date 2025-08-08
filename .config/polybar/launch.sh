#!/usr/bin/env bash

# Terminate already running bar instances
polybar-msg cmd quit

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bars on all monitors
if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar -c ~/.config/polybar/config-i3.ini example 2>&1 | tee -a /tmp/polybar-$m.log & disown
  done
else
  polybar -c ~/.config/polybar/config-i3.ini example 2>&1 | tee -a /tmp/polybar.log & disown
fi

echo "Bars launched..."
