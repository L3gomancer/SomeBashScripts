#!/bin/bash
# works
# 

# echo "Usage: Enter a number of rows then drag in many images
# WARNING: This script deletes any files named \"tmp00.png\""

if [ "$1" = "" ]; then
  echo "Usage: drag in images as parameters to append vertically"
fi

convert "$@" -append "out$RANDOM.png"
