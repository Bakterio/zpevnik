#!/bin/sh

jq '[ .songs[].blocks[].paragraphs[][] | select(.type == "i-chord").chord ] | unique' "$OUTPUT" > "${OUTPUT_STEM}-chords.json"

