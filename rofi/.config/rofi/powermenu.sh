#!/bin/sh

chosen=$(printf "Logout\nLock" | rofi -dmenu)

case "$chosen" in
  "Logout") i3-msg exit
  ;;
  "Lock") betterlockscreen -l dim
  ;;
esac


