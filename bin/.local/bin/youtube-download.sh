#!/bin/sh

#youtube-link=$2
#link-type=$1

case "$1" in
	"pl")
		youtube-dl -i -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]/best' -o "$HOME/videos/%(uploader)s/%(playlist-title)s/%(title)s.%(ext)s" --download-archive "$HOME/.cache/youtube-dl-playlists" "$2"
		;;
	"v")
		youtube-dl -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/best' -o "$HOME/videos/%(uploader)s-%(title)s.%(ext)s" "$2"
		;;
	"a")
		youtube-dl -f m4a/bestaudio -o "$HOME/videos/%(uploader)s-%(title)s.%(ext)s" "$2"
		;;
	*)
		echo "wrong syntax"
		exit 1
		;;
esac
