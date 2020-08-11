#!/bin/sh

setxkbmap -variant colemak
xmodmap -e 'keycode 66 = Escape'
xmodmap -e 'clear lock'
xmodmap -e 'keycode 108 = Shift_L'

xset r rate 280 40

dunst &
~/bin/dwm_status &

redshift -P -O 4000
xbacklight -set 40

# disable touchpad while typing
syndaemon -i 0.8 -t -K -R -d

exec dwm
