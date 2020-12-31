#!bin/sh

echo "Enter a filename"
read f
if [ ! -e $f ]
then
echo "no such file exists"
else
s=`tr -cd "[aAeEiIoOuU]"<$f | wc -c`
echo "Number of vowels in $f: $s"
fi
