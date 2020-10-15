#Shell script to  find the SUM OF EVEN NUMBERS UPTO N using Looping construct.

echo "Enter a number to find the sum of even numbers up to it"
read num
n=0
sum=0
while [ $n -le $num ]
do
sum=`expr $sum + $n`
n=`expr $n + 2` 
done

echo "SUM: $sum"


