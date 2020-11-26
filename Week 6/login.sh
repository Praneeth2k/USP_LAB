# !bin/sh

#Write a Shell Script that accepts valid login names as arguments and print their corresponding #home directories using grep command (use  /etc/passwd to search Login name).

echo "Enter login name"
read name

var=`grep -c $name /etc/passwd`
if [ $var -eq 0 ]
then
    echo "Invalid name"
else
echo "List of home directories ($var): "
grep $name /etc/passwd | cut -d ":" -f 6
fi
