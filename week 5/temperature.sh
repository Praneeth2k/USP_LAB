#!/bin/sh

echo "Fahrenheit to celsius:1 or Celsius to farenheit:2"
read ch

case $ch in
      "1")
	echo "Enter the temperature in fahrenheit"
	read tf
	tc=$(echo "scale=2;(5/9)*($tf-32)"|bc)
	echo "The temperature in celsius is $tc"
	;;
      '2')
	echo "Enter the temperature in celsius"
	read tc
	tf=$(echo "scale=2;((9/5) * $tc) + 32" |bc)
        echo "The temperature in fahrenheit is $tf"
        ;;
       *)
	echo "Wrong input"
	;;
esac
