#!/bin/bash
# changeVolume

# Arbitrary but unique message id
msgId="991049"

# Change the volume using alsa(might differ if you use pulseaudio)
pulsemixer --change-volume "$@" > /dev/null

# Query amixer for the current volume and whether or not the speaker is muted
volume="$(pulsemixer --get-volume | cut -d' ' -f 1)"
mute="$(pulsemixer --get-mute)"
if [[ $volume == 0 || "$mute" == "1" ]]; then
    # Show the sound muted notification
    dunstify -a "changeVolume" -u low -i audio-volume-muted -r "$msgId" "Volume muted" 
else
    # Show the volume notification
    dunstify -a "changeVolume" -u low -i audio-volume-high -r "$msgId" \
        -h int:value:"$volume" "Volume: ${volume}%"
fi

# Play the volume changed sound
# canberra-gtk-play -i audio-volume-change -d "changeVolume"
