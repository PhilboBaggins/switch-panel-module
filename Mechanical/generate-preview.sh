#!/bin/sh

set -e  # Exit immediately if a command exits with a non-zero status
set -u  # Treat unset variables as an error and exit immediately

OUTPUT_FILE="cover-preview.png"

rm -rf "$OUTPUT_FILE"

magick \
    -background none \
    cover.svg \
    -density 300 \
    -resize 1000x1000 \
    -crop 500x500+0+0 \
    "$OUTPUT_FILE"
