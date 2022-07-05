#!/bin/sh
read url
exec yt-dlp --extract-audio --audio-format wav -o "%(title)s.%(ext)s" "$url"


