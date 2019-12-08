#!/usr/bin/env sh
set -eu

ffmpeg -i ${INPUT_STREAM}  -vcodec copy -acodec copy -f flv ${OUTPUT_STREAM}

exec "$@"