#!/bin/bash

LIST_FILE="${1:-non_1920x1080_images.txt}"

if ! command -v magick &> /dev/null; then
    echo "Error: ImageMagick (magick) not found. Install it first."
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

    dir=$(dirname "$file")
    name=$(basename "${file%.*}")

    output="$dir/${name}.png"

    echo "Converting: $file -> $output"

    magick "$file" -resize 2048x2048\! "$output"

done < "$LIST_FILE"

echo "Done converting all images to PNG."