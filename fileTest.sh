#Write a Shell program to accept two parameters perform File Test and display their attributes #with suitable message if not display a suitable  message to pass right number of arguments.

a=2

echo "You entered $# argument(s)"
if [ $# -eq $a ]
then
if [ -f $1 ]
then
echo "Argument 1 is a File"
echo "Attributes of file 1"
stat $1
else
echo "Argument 1 is not a File"
fi

if [ -f $2 ]
then
echo "Argument 2 is a File"
echo "Attributs of file 2"
stat $1
else
echo "Argument 2 is not a File"
fi

elif [ $# -gt $a ]
then
echo "Enter only 2 arguments"
elif [ $# -lt $a ]
then
echo "Enter 1 more argument"
else
echo "Enter 2 arguments"
fi
