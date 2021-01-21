#!/bin/sh

setxkbmap de &
xset r rate 300 50 &
unclutter &

while true; do
    statusbar
    sleep 1s
done &

exec dwm
