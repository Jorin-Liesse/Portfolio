#!/bin/bash

# Usage: ./list_files.sh <directory> <output_file>

TARGET_DIR="${1:-.}"
OUTPUT_FILE="${2:-file_list.txt}"

# Resolve to absolute path
ABS_DIR="$(realpath "$TARGET_DIR")"

# Clear output file
> "$OUTPUT_FILE"

# Recursively find all files with full paths
find "$ABS_DIR" -type f >> "$OUTPUT_FILE"

echo "File paths written to $OUTPUT_FILE"