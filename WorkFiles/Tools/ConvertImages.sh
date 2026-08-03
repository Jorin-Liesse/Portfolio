#!/bin/sh

set -e

# ---- ARGUMENT CHECK ----
if [ "$#" -ne 2 ]; then
  echo "Usage: $0 <input_folder> <output_folder>"
  exit 1
fi

INPUT_DIR="$(realpath "$1")"
OUTPUT_DIR="$(realpath "$2")"

if [ ! -d "$INPUT_DIR" ]; then
  echo "Error: Input folder does not exist."
  exit 1
fi

mkdir -p "$OUTPUT_DIR"

echo "Input folder : $INPUT_DIR"
echo "Output folder: $OUTPUT_DIR"
echo "Starting conversion..."

# ---- FIND IMAGE FILES ONLY ----
find "$INPUT_DIR" -type f \( \
  -iname "*.png" -o \
  -iname "*.jpg" -o \
  -iname "*.jpeg" -o \
  -iname "*.webp" -o \
  -iname "*.bmp" -o \
  -iname "*.tiff" -o \
  -iname "*.tga" -o \
  -iname "*.gif" \
\) | while IFS= read -r FILE; do

  REL_PATH="${FILE#$INPUT_DIR/}"
  REL_NO_EXT="${REL_PATH%.*}.jpg"
  OUT_FILE="$OUTPUT_DIR/$REL_NO_EXT"

  OUT_DIR="$(dirname "$OUT_FILE")"
  mkdir -p "$OUT_DIR"

  echo "Converting: $REL_PATH"

  ffmpeg -y -loglevel error -i "$FILE" "$OUT_FILE"

done

echo "✅ Conversion complete."
``