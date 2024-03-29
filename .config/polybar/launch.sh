#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch bar1 and bar2
#nohup polybar topbar > /dev/null 2>&1 &
#nohup polybar bottombar > /dev/null 2>&1 &

#nohup polybar center > /dev/null 2>&1 &
#nohup polybar left > /dev/null 2>&1 &
#nohup polybar right > /dev/null 2>&1 &

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload default &
  done
else
  polybar --reload default &
  #polybar --reload left &
  #polybar --reload right &
fi

