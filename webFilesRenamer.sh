#!/bin/sh
# works
# usage: $ sh wfr.sh <barefilename>
# specifically for renaming files "one-two" to "two-one"

pt1=`echo $1 | sed 's/-.*//'`
pt2=`echo $1 | sed 's/.*-//'`
new="$pt2-$pt1"
sed -i.bak s/"$pt1"/"$new"/  "$1.html"
mv "$1.html" "$new.html"
mv "$pt1.js" "$new.js"
# mv "$pt1.txt" "$new.txt"
# mv "$1.png" "$new.png"
