#!/bin/sh

export DISPLAY=:0
export DBUS_SESSION_BUS_ADDRESS="unix:path=/run/user/1000/bus"

WARNING_LEVEL=20
BATTERY_DISCHARGING=$(acpi -b | grep "Battery 0" | grep -c "Discharging")
BATTERY_LEVEL=$(acpi -b | grep "Battery 0" | grep -P -o '[0-9]+(?=%)')

if [ "$BATTERY_LEVEL" -le "$WARNING_LEVEL" ] && [ "$BATTERY_DISCHARGING" -eq 1 ]; then
  notify-send "BATTERY LOW" -u critical
fi
