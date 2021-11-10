#!/usr/bin/env sh

printf "%s\r\n" "W3m-control: READ_SHELL transmission-remote --add '$QUERY_STRING'"
printf "%s\r\n" "W3m-control: DELETE_PREVBUF"
printf "%s\r\n" "W3m-control: BACK"
