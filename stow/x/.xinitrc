#!/bin/sh

setxkbmap -variant colemak
xmodmap -e 'keycode 66 = Escape'
xmodmap -e 'clear lock'
xmodmap -e 'keycode 108 = Shift_L'

# disable touchpad while typing
syndaemon -i 0.8 -t -K -R -d

xset r rate 280 40

dunst &
dwm_status &
setbg &

redshift -P -O 3500
xbacklight -set 30

xss-lock -- /usr/local/bin/slock &

exec dwm
