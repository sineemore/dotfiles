#!/bin/sh

if [ -f ./.fehbg ]
then
	./.fehbg
else
	xsetroot -solid "#dddddd"
fi

slstatus &

setxkbmap -layout us,ru -option grp:rctrl_toggle

xset r rate 200 100

stw -x50% -y50% -X221 -Y-300 -fblack -b"#dddddd" -F 'monospace:size=10' -p60 pstree -U &

exec dwm
