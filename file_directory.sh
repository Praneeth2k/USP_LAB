#! /bin/sh

#Write shell scripts accept a file as a command line argument 
#and display whether it is ordinary file or directory file and 
#display their attributes.

if [ $# -eq 0 ]
then
echo "Enter file name"

elif [ $# -eq 1 ]
then
    if [ -d "$1" ]
    then
        echo "It is a directory and it's attributes are:"
	stat $1
    elif [ -f "$1" ]
    then 
	echo "It is a file and it's attributes are:"
	stat $1
    else
	echo "Invalid file"
    fi
else
    echo "Pass only 1 argument"
fi
