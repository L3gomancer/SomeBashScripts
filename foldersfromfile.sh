#!/bin/sh
# works. make folders from a list of names in a file
# usage: nav to folder
# $ ~/foldersfromfile.sh <file.txt>
# Needs trailing newline. Allows spaces in name. 
# From StOv

while read dirn; do
    mkdir "$dirn"
done < $1
