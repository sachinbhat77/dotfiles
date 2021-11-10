#!/bin/sh

device=$(ip route get 1 | awk '{print $5}' | head -n 1)

case $device in
	'wlo1')
		label=' '
		device_name=$(iw dev wlo1 info | grep ssid | cut -d' ' -f2)
		;;
	'enp37s0')
		label=' '
		device_name=$(ip route get 1 | awk '{print $7; exit}')
		;;
	enp0s2*)
		label=' '
		device_name=$(ip route get 1 | awk '{print $7; exit}')
		;;
	*)
	;;
esac

#check_inernet=$(ping -c1 voidlinux.org 2>/dev/null)
#[ -n "$check_inernet" ] && 

echo "$label""$device_name "
