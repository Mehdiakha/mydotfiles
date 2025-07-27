#!/usr/bin/env bash

# Terminate already running bar instances
# If all your bars have IPC enabled, you can use 
polybar-msg cmd quit
# Otherwise you can use the nuclear option:
# killall -q polybar

# Launch mybar
echo "---" | tee -a /tmp/mybar.log
polybar i3_bar 2>&1 | tee -a /tmp/mybar.log & disown

echo "Bars launched..."

