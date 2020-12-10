#Write a Shell Script that accepts two filenames as arguments. Check if the permissions for
#these files are identical and if the permissions are identical output the common permissions,
#otherwise output each filename followed by its permission

#!/bin/sh

echo "Enter the two file names to check if they have the same permissions"
read f1 f2
if [ ! -e $f1 -o ! -e $f2 ]
	then
	echo "File does not exist"
else
	firstFilePermissions=`ls -l $f1|cut -c2-10`
	secondFilePermissions=`ls -l $f2|cut -c2-10`
	if [ "$firstFilePermissions" = "$secondFilePermissions" ]
	then
		echo "File permissions are equal & is $firstFilePermissions"
	else
		echo "File permissions are not equal"
		echo "Permissions for $f1: $firstFilePermissions"
		echo "Permissions for $f2: $secondFilePermissions"
	fi
fi
