#!/bin/bash

DIR="${1:-.}"
OUTPUT="non_1080p_24fps_videos.txt"

if ! command -v ffprobe &> /dev/null; then
    echo "Error: ffprobe not found. Install FFmpeg first."
    exit 1
fi

> "$OUTPUT"

find "$DIR" -type f | while IFS= read -r file; do

    case "${file,,}" in
        *.mp4|*.mov|*.mkv|*.avi|*.webm)
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

    fps=$(ffprobe -v error -select_streams v:0 \
        -show_entries stream=r_frame_rate \
        -of default=nw=1:nk=1 "$file" 2>/dev/null)

    # skip invalid files
    if [ -z "$width" ] || [ -z "$height" ] || [ -z "$fps" ]; then
        continue
    fi

    # convert fps safely
    fps_val=$(awk -v r="$fps" 'BEGIN {
        split(r,a,"/");
        if (a[2] != 0) printf "%.2f", a[1]/a[2];
    }')

    # check conditions
    if [ "$width" -ne 1920 ] || [ "$height" -ne 1080 ] || \
       [ "$(printf "%.0f" "$fps_val")" -ne 24 ]; then

        echo "$(realpath "$file")" >> "$OUTPUT"
    fi

done

echo "Done. Saved to $OUTPUT"