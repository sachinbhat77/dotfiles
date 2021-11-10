#!/bin/sh

scrot 'screenshot_%Y_%m_%d_%H%M%S_$wx$h.png' -e 'mv $f ~/pictures/screenshots/' && notify-send -u low 'screenshot taken'
