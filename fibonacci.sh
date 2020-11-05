#!/bin/sh

echo "Enter n"
read n
temp=0
prev=0
i=1
echo "The fibonacci series upto $n is"
printf "$prev "
while [ $n -ge 2 ]
do
printf "$i "
temp=$i
n=`expr $n - 1`
i=`expr $i + $prev`
prev=$temp
done
echo ""
