#!/usr/bin/env bash
set -euo pipefail

# Input and Output
INPUT_PATH="$1"
SAMPLE_FILE="$2"
OUTPUT_FILE="$3"

# Get the resolution of a single file
# SAMPLE_FILE=$(find "$INPUT_PATH" -type f -print -quit)
FFMPEG_RESOLUTION=$(ffprobe -v error -show_entries stream=width,height -of csv=p=0:s=x "$SAMPLE_FILE")

# Modify as needed, but 30fps for snapshots taken every 5 minutes
# produces a very smooth time lapse.
FFMPEG_FRAMERATE=30
FFMPEG_CODEC="libx264"
FFMPEG_CRF=17
# Duration to hold the last frame for.
FFMPEG_HOLD=2
FFMPEG_HOLD_FILTER="[0]trim=0:${FFMPEG_HOLD}[hold];[0][hold]concat[extended];[extended][0]overlay"

# Create the timelapse file
ffmpeg -framerate "$FFMPEG_FRAMERATE" -pattern_type glob -i "$INPUT_PATH" \
    -s:v "$FFMPEG_RESOLUTION" -c:v "$FFMPEG_CODEC" \
    -crf "$FFMPEG_CRF" -pix_fmt yuv420p \
    -filter_complex "$FFMPEG_HOLD_FILTER" \
    "$OUTPUT_FILE"
