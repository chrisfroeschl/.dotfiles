#!/bin/sh

setxkbmap de &
xset r rate 300 50

while true; do
    dwmbar
    sleep 1s
done &

exec dwm
