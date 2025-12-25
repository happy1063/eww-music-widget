#!/bin/bash

CACHE_DIR="$HOME/.cache/eww_covers"
mkdir -p "$CACHE_DIR"

art_url=$(playerctl metadata mpris:artUrl 2>/dev/null || echo "")

if [[ "$art_url" == http* ]]; then
    filename=$(basename "$art_url")
    cached_path="$CACHE_DIR/$filename"
    if [[ ! -f "$cached_path" ]]; then
        curl -s "$art_url" -o "$cached_path"
    fi
    echo "$cached_path"
elif [[ "$art_url" == file://* ]]; then
    echo "${art_url#file://}"
else
    echo ""
fi

playerctl --follow metadata mpris:artUrl 2>/dev/null | while read -r art_url; do
    if [[ "$art_url" == http* ]]; then
        filename=$(basename "$art_url")
        cached_path="$CACHE_DIR/$filename"
        curl -s "$art_url" -o "$cached_path"
        echo "$cached_path"
    elif [[ "$art_url" == file://* ]]; then
        echo "${art_url#file://}"
    else
        echo ""
    fi
done
