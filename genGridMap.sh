#!/bin/sh
# usage: run. standard output
# works. inspirde by ZLA map from GameFAQs guide
# https://gamefaqs.gamespot.com/gbc/197769-the-legend-of-zelda-links-awakening-dx/faqs/46895

echo " \c"
for i in {A..J};
do
 echo "$i \c"
done
echo

echo " \c"
for i in {1..10}
do
 echo "_ \c"
done
echo

for i in {1..3}
do
 echo '|\c'
 for i in {1..10}
 do
  echo '_|\c'
 done
 echo
done



#  A B C D E F G H I J 
#  _ _ _ _ _ _ _ _ _ _ 
# |_|_|_|_|_|_|_|_|_|_|
# |_|_|_|_|_|_|_|_|_|_|
# |_|_|_|_|_|_|_|_|_|_|