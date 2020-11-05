#!/bin/sh

echo "Enter n"
read n
temp=0
prev=0
i=1
echo "The fibonacci series upto $n is"
printf "$prev "
while [ $i -le $n ]
do
printf "$i "
temp=$i
i=`expr $i + $prev`
prev=$temp
done
echo ""
