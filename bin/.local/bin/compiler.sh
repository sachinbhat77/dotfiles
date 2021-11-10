#!/bin/sh

file=$(readlink -f "$1")
directory_name=$(dirname "$file")
base="${file%.*}"

cd "$directory_name" || exit

case "$file" in

	*\.[0-9]) preconv "$file" | refer -PS -e | groff -mandoc -T pdf > "$base".pdf ;;
	*\.[rR]md) Rscript -e "rmarkdown::render("$file", quiet=TRUE)" ;;
	*\.c) gcc "$file" -o "$base" && "$base" ;;
	*\.cpp) g++ "$file" -o "$base" && "$base" ;;
	*\.go) go run "$file" ;;
	*\.h) sudo make install ;;
	*\.jl) julia "$file" ;;
	*\.m) octave "$file" ;;
	*\.md) pandoc "$file" --pdf-engine=wkhtmltopdf -o "$base".pdf ;;
	*\.me) groff -T pdf -me "$file" > "$base".pdf ;;
	*\.mom) groff -mom -kept -T pdf > "$base".pdf ;;
	*\.mom) preconv "$file" | refer -PS -e | groff -mom -kept -T pdf > "$base".pdf ;;
	*\.ms) groff -ms "$file" -T pdf > "$base".pdf ;;
	*\.ms) preconv "$file" | refer -PS -e | groff -me -ms -kept -T pdf > "$base".pdf ;;
	*\.py) python "$file" ;;
	*\.scad) openscad -o "$base".stl "$file" ;;
	*\.sent) setsid sent "$file" 2>/dev/null & ;;
	*) sed 1q "$file" | grep "^#!/" | sed "s/^#!//" | xargs -r -I % "$file" ;;

esac
