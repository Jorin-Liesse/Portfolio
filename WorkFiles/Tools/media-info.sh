#!/bin/bash

DIR="${1:-.}"

if ! command -v ffprobe &> /dev/null; then
    echo "Error: ffprobe not found. Install FFmpeg first."
    exit 1
fi

find "$DIR" -type f -print0 | while IFS= read -r -d '' file; do

    case "${file,,}" in
        *.mp4|*.mov|*.mkv|*.avi|*.webm|*.png|*.jpg|*.jpeg|*.gif)
            ;;
        *)
            continue
            ;;
    esac

    filename=$(basename "$file")

    # container format
    format=$(ffprobe -v error \
        -show_entries format=format_name \
        -of default=nw=1:nk=1 "$file" 2>/dev/null)

    # video codec (H.264 / HEVC / AV1 etc.)
    codec=$(ffprobe -v error -select_streams v:0 \
        -show_entries stream=codec_name \
        -of default=nw=1:nk=1 "$file" 2>/dev/null)

    width=$(ffprobe -v error -select_streams v:0 \
        -show_entries stream=width \
        -of default=nw=1:nk=1 "$file" 2>/dev/null)

    height=$(ffprobe -v error -select_streams v:0 \
        -show_entries stream=height \
        -of default=nw=1:nk=1 "$file" 2>/dev/null)

    fps=$(ffprobe -v error -select_streams v:0 \
        -show_entries stream=r_frame_rate \
        -of default=nw=1:nk=1 "$file" 2>/dev/null)

    # fallback image size
    if [ -z "$width" ] || [ -z "$height" ]; then
        width=$(ffprobe -v error \
            -show_entries stream=width \
            -of default=nw=1:nk=1 "$file" 2>/dev/null)

        height=$(ffprobe -v error \
            -show_entries stream=height \
            -of default=nw=1:nk=1 "$file" 2>/dev/null)
    fi

    # skip invalid
    if [ -z "$width" ] || [ -z "$height" ]; then
        continue
    fi

    # fps conversion
    fps_val="-"
    if [[ "$fps" == */* ]]; then
        fps_val=$(awk -v r="$fps" 'BEGIN {
            split(r,a,"/");
            if (a[2] != 0) printf "%.2f", a[1]/a[2];
        }')
    elif [ -n "$fps" ]; then
        fps_val="$fps"
    fi

    echo "$filename | $format | $codec | ${width}x${height} | ${fps_val} fps"

done