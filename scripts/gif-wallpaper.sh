#!/bin/bash
# Start Xwinwrap with the proper window parameters and options

xwinwrap -g 1920x1080 -ov -ni -fs -nf -- mpv --no-config --loop -wid WID --no-audio --no-osc --no-input-default-bindings --fullscreen --geometry=100%:100% /home/mehdi/Downloads/LTErMiIi5tiIvi3yci.gif &
