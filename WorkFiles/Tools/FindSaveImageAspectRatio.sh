#!/bin/bash

DIR="${1:-.}"
OUTPUT="non_1920x1080_images.txt"

if ! command -v ffprobe &> /dev/null; then
    echo "Error: ffprobe not found. Install FFmpeg first."
    exit 1
fi

> "$OUTPUT"  # clear file

find "$DIR" -type f | while IFS= read -r file; do

    case "${file,,}" in
        *.png|*.jpg|*.jpeg|*.gif|*.bmp|*.webp|*.avif|*.tiff)
            ;;
        *)
            continue
            ;;
    esac

    width=$(ffprobe -v error -select_streams v:0 \
        -show_entries stream=width \
        -of default=nw=1:nk=1 "$file" 2>/dev/null)

    height=$(ffprobe -v error -select_streams v:0 \
        -show_entries stream=height \
        -of default=nw=1:nk=1 "$file" 2>/dev/null)

    if [ -z "$width" ] || [ -z "$height" ]; then
        continue
    fi

    if [ "$width" -ne 1920 ] || [ "$height" -ne 1080 ]; then
        echo "$(realpath "$file")" >> "$OUTPUT"
    fi

done

echo "Done. Full paths saved in $OUTPUT"