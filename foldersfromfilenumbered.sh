#!/bin/sh
# works
# no spaces around operators " = " and " + "
# makes folders from a list in a file and numbers them. Allows spaces in name.
# usage: $ ~/foldersfromfile.sh <file.txt>

n=1
while read i; do
    mkdir "0$n$i"
    n=$((n+1))
done < $1
mkdir "0$n$i"