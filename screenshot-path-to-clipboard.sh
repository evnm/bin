#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Screenshot path to clipboard
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 📋
# @raycast.description Take a screenshot and copy the screenshot file's path to the clipboard

# Documentation:
# @raycast.author evnm
# @raycast.authorURL https://raycast.com/evnm
dir=~/Screenshots; mkdir -p "$dir"
f="$dir/$(date +%Y%m%d-%H%M%S).png"
screencapture -i "$f" && printf '%s' "$f" | pbcopy
