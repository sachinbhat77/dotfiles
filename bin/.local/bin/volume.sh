#!/bin/sh

volume() {
	mute_status=$(pulsemixer --get-mute)
	volume=$(pulsemixer --get-volume | cut -d' ' -f 1) 

	[ "$mute_status" = 1 ]  && echo "  $volume "
	[ "$mute_status" = 0 ]  && [ "$volume" -gt 50 ] && echo " $volume "
	[ "$mute_status" = 0 ]  && [ "$volume" -le 50 ] && [ "$volume" -ge 10 ] && echo " $volume "
	[ "$mute_status" = 0 ]  && [ "$volume" -lt 10 ] && echo " $volume "
}

volume
