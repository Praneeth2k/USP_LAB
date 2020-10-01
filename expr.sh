# !/bin/sh

#Write a shell program to perform the basic Airthmetic Operations using expr command 
#Addition,Subtraction,Multiplication and Division

read -p "Enter two numbers:" a b

add=`expr $a + $b`
sub=`expr $a - $b`
mul=`expr $a \* $b`
div=`expr $a / $b`

echo "Sum = $add\nDifference = $sub\nProduct = $mul\nDivision = $div"

# Enter two numbers:10 2
# Sum = 12
# Difference = 8
# Product = 20
# Division = 5

