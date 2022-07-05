#!/bin/sh
echo "" | rofi -config ~/.config/rofi/search.rasi -dmenu -p "Search>"| xargs -I{} xdg-open https://www.google.de/search?q={}

#query=$( (echo ) | rofi  -dmenu -matching fuzzy -location 0 -p "Query > " )

