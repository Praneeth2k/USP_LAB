#Write a Shell script to find the POWER OF A NUMBER using loop construct.

echo "Enter the number and it's power"
read n e
res=1
while [ $e -gt 0 ]
do
res=`expr $res \* $n`
e=`expr $e - 1`
done
echo "Result: $res"
