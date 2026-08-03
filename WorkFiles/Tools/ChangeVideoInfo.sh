#!/bin/bash

LIST_FILE="${1:-videos.txt}"

if ! command -v ffmpeg &> /dev/null; then
    echo "Error: ffmpeg not found. Install FFmpeg first."
    exit 1
fi

if [ ! -f "$LIST_FILE" ]; then
    echo "Error: file not found: $LIST_FILE"
    exit 1
fi

while IFS= read -r file; do
    [ -z "$file" ] && continue

    if [ ! -f "$file" ]; then
        echo "Missing: $file"
        continue
    fi

    echo "Processing (overwrite): $file"

    tmp="${file%.*}_tmp.mp4"

    ffmpeg -y -i "$file" \
        -vf "scale=1920:1080,fps=24" \
        -r 24 \
        -c:v libx264 -preset medium -crf 18 \
        -c:a aac -b:a 192k \
        "$tmp"

    # replace original safely
    if [ -f "$tmp" ]; then
        mv -f "$tmp" "$file"
    else
        echo "Failed: $file"
    fi

done < "$LIST_FILE"

echo "Done. All videos overwritten."
