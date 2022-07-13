#!/bin/sh

# Sportify
xdotool key Super_L+6 # Change to Screen 6
spotify &
sleep 1
xdotool key Super_L+1 # Switch Back to home screen

# Dropbox
~/.dropbox-dist/dropboxd &

# Wallpaper
feh --bg-fill ~/.config/X11/gruvboxlinux.jpg &

# Dwmblocks
dwmblocks &
