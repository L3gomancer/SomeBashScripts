#!/bin/sh
# works!
# reverse line order of an inputted file
# can drag in paths! cant take .rtf docs


echo "reverses line order!"
echo "enter a file (doesnt tab complete)"
read in
echo "enter a name for the output file"
read out
cat $in | tail -r > $out

