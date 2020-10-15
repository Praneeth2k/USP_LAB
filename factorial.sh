#!bin/sh
# Shell script to  find the FACTORIAL OF A NUMBER using Looping construct

echo "Enter a number to get it's factorial"
read n
res=1

while [ $n -gt 0 ]
do
res=`expr $res \* $n`
n=`expr $n - 1`
done

echo "Factorial: $res"

