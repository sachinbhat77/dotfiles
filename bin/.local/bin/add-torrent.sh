#!/bin/sh

transmission-remote -a "$@" && notify-send "torrent added"
