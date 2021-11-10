#!/bin/sh

current_song=$(mpc current -f "[%artist% - %title%]|[%file%]" | cut -c-50)
song_status=$(mpc status | grep / | awk -F '[][]' '{print $2}' | tail -n 1)

case $song_status in
	'paused')
		status_icon=' '
		;;
	'playing')
		status_icon=' '
		;;
	*)
		status_icon=' '
		;;
esac

echo "$status_icon""$current_song "
