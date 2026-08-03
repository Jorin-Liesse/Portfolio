#!/bin/bash

# Usage: ./batch_av1_720p.sh file_list.txt output_folder

INPUT_LIST="$1"
OUTPUT_DIR="${2:-output}"

if [ -z "$INPUT_LIST" ]; then
  echo "Usage: $0 file_list.txt [output_folder]"
  exit 1
fi

mkdir -p "$OUTPUT_DIR"

while IFS= read -r INPUT; do
  # Remove Windows carriage return (\r)
  INPUT="${INPUT%$'\r'}"

  # Skip empty lines
  [ -z "$INPUT" ] && continue

  # Check if file exists
  if [ ! -f "$INPUT" ]; then
    echo "❌ File not found: $INPUT"
    continue
  fi

  # Get filename without path
  FILENAME=$(basename "$INPUT")
  NAME="${FILENAME%.*}"

  OUTPUT="$OUTPUT_DIR/${NAME}"

  echo "Processing: $INPUT -> $OUTPUT"

###IMAGE COMPRESSION COMMANDS###
# Primary Format
ffmpeg -i "$INPUT" \
  -vf "scale=1280:720:flags=lanczos" \
  -c:v libaom-av1 \
  -still-picture 1 \
  -crf 20 \
  -b:v 0 \
  -map_metadata -1 \
  -map_chapters -1 \
  -dn \
  "$OUTPUT.avif"

## Fallback Format
ffmpeg -i "$INPUT" \
  -vf "scale=1280:720:flags=lanczos" \
  -q:v 2 \
  -map_metadata -1 \
  -map_chapters -1 \
  -dn \
  "$OUTPUT.jpg"

###VIDEO COMPRESSION COMMANDS###
## Primary Format
# ffmpeg -i "$INPUT" \
#   -vf "scale=-2:720" \
#   -c:v libaom-av1 \
#   -crf 30 \
#   -b:v 0 \
#   -cpu-used 3 \
#   -row-mt 1 \
#   -g 240 \
#   -pix_fmt yuv420p10le \
#   -map 0:v \
#   -an \
#   -sn \
#   -dn \
#   -map_metadata -1 \
#   -map_chapters -1 \
#   "$OUTPUT.webm"

## Fallback Format
# ffmpeg -i "$INPUT" \
#   -vf "scale=-2:720" \
#   -map 0:v \
#   -c:v libx264 \
#   -preset slow \
#   -crf 23 \
#   -pix_fmt yuv420p \
#   -movflags +faststart \
#   -map_metadata -1 \
#   -map_metadata:s:v -1 \
#   -map_chapters -1 \
#   -dn -sn \
#   -metadata title="" \
#   -metadata encoder="" \
#   "$OUTPUT.mp4"

## Master File Format
# ffmpeg -i "$INPUT" \
#   -vf "scale=1920:1080,fps=24" \
#   -c:v libx264 \
#   -preset slow \
#   -crf 18 \
#   -pix_fmt yuv420p \
#   -profile:v high \
#   -level 4.2 \
#   -movflags +faststart \
#   -c:a aac \
#   -b:a 192k \
#   "$OUTPUT.mp4"

done < "$INPUT_LIST"

echo "All done."
