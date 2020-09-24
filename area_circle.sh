#! /bin/sh
# shell Script to calculate area of a circle

echo "Enter the radius :"
read r
area=`echo 3.1415 \* $r \* $r | bc`
echo "Area of Circle is : $area"

# Enter the radius :
# 4
# Area of Circle is : 50.2640
