#!/bin/bash
# works
# This script appends images horizontally and outputs a PNG named with a 4/5 digit random number.
# Usage: drag in image files as parameters. 
# $ GenMainAppender.sh <files>

if [ "$1" = "" ]; then
  echo "Usage: drag in images as parameters to append horizontally"
fi

convert "$@" +append "temp$RANDOM.png" 
# 2>/dev/null
