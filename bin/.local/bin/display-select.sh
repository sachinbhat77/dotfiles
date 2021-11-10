#!/bin/sh

monitor_count=$(xrandr | grep -w 'connected' | wc -l)

monitor1=$(xrandr --listmonitors | awk '/x/ {print $4}' | head -n 1)
monitor2=$(xrandr --listmonitors | awk '/x/ {print $4}' | tail -n 1)
resolution=$(xrandr | grep $monitor2 | awk '{print $3}' | awk -F "+" '{print $1}')

DualMonitor() {
    first_monitor=$(printf "$monitor1 \n $monitor2" | dmenu -i -p "select first/left monitor:")
    second_monitor=$(printf "$monitor1 \n $monitor2" | dmenu -i -p "select second(right) monitor:")

    xrandr --output $first_monitor --primary --left-of $second_monitor --output $monitor2 --mode $resolution

}

SingleMonitor() {
    mainmon=$(printf "$monitor1 \n $monitor2" | dmenu -i -p "select monitor:")
    [ $mainmon = $monitor1 ] && xrandr --output $monitor1 --primary --output $monitor2 --off
    [ $mainmon = $monitor2 ] && xrandr --output $monitor2 --primary --output $monitor1 --off

}

Mirror() {
    xrandr --output $monitor2 --same-as $monitor1 || xrandr --output $monitor1 --same-as $monitor2
}

if [ $monitor_count -gt 1 ]; then
    mode=$(printf "dual-monitor\nsingle-monitor\nmirror" | dmenu -i -p "select display mode:")

    case "$mode" in
        'dual-monitor') DualMonitor
            ;;
        'single-monitor') SingleMonitor
            ;;
        'mirror') Mirror
            ;;
        *)
            ;;
    esac

elif [ $monitor_count -le 1 ]; then
    echo "no monitor connected" | dmenu

fi
