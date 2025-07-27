#!/bin/sh

# Set keyboard options
setxkbmap -option "caps:shiftlock"

# Set touchpad options
setxkbmap -option "caps:shiftlock"
xinput set-prop 12 "libinput Tapping Enabled" 1

# Start background applications
nm-applet &
picom &

# Start the window manager or desktop environment
exec i3




