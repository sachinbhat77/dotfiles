#!/bin/sh

clipmenud &
devmon &
#emacs --daemon &
mpd &
picom &
setxkbmap -option caps:swapescape &
transmission-daemon &
xset r rate 280 60 &
xwallpaper --stretch ~/.config/wallpaper.jpg &

exec bspwm
