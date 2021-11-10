#!/bin/sh

synclient TapButton1=1
synclient TapButton2=3
synclient TapButton3=2
synclient TouchpadOff=1
synclient VertScrollDelta=-108

(synclient | grep "TouchpadOff.*1" && synclient TouchpadOff=0)> /dev/null && exit
