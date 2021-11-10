#!/bin/sh

battery_status=$(cat /sys/class/power_supply/BAT0/status)
battery_percentage=$(cat /sys/class/power_supply/BAT0/capacity)

label=' '

case "$battery_status" in
	'Charging')
		status=''
		;;
	'Discharging')
		[ "$battery_percentage" -gt 15 ] && status=''
		[ "$battery_percentage" -le 15 ] && status=''
		;;
	'Full')
		status=''
		;;
	'Unknown')
		status=''
		;;
	*)
		;;
esac

echo "$label""$battery_percentage%" "$status "
