#!/bin/sh
# works
# swap lines so 2nd line is atop 1st. 
# usage: $ swaplines.sh <file>
# 2try allow output name+folder to be declared

# Optional data cleanup. Delete all blank lines
# sed '/^$/d' $1 > m1.txt

# delete every 2nd line
sed 'n;d' $1 > temp1.txt
# extract every 2nd line
sed -n 'n;p' $1 > temp2.txt
# merge em
paste temp2.txt temp1.txt > out.txt 
# replace tabs (paste) with newlines
#tr '\t' '\n' < temp3.txt > out.txt
# cleanup
#rm temp1.txt temp2.txt
