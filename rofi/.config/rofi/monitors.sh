#!/bin/sh

chosen=$(printf "Extend Right\nPrimary Only" | rofi -dmenu)

case "$chosen" in
  "Extend Right") xrandr --output eDP-1 --mode 1920x1080 --rate 60 --output HDMI-1-1 --mode 1920x1080 --rate 60 --right-of eDP-1
  ;;
  "Primary Only") xrandr --output HDMI-1-1 --off
  ;;
esac


