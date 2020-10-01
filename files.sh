#! /bin/sh
#Write a shell Program to accept a filename from the 
#User and display the attributes,contents and word 
#count of the file Perform copy,rename  operation by 
#accepting two filenames from the user

echo "Enter the file's name"
read filename

echo "\nAttributes of the file are"
stat $filename

echo "\nContents of the file are:\n"
cat $filename

res=$( wc -w <"$filename" )
echo "\nWord count : $res"

echo "\nEnter the file's name which you want to rename\n"
read original

echo "\nEnter the new name you want to give to the file"
read newname

mv $original $newname

echo "\nFile renamed"

echo "\nEnter two file names:"
read f1 f2

echo "\nCopying file 1 to file 2..."
cp $f1 $f2
echo "\nDone"


# Enter the file's name
# file1.txt
# 
# Attributes of the file are
#   File: file1.txt
#   Size: 43        	Blocks: 8          IO Block: 4096   regular file
# Device: 801h/2049d	Inode: 661762      Links: 1
# Access: (0644/-rw-r--r--)  Uid: ( 1000/    user)   Gid: ( 1000/    user)
# Access: 2020-10-01 14:52:37.601758587 +0530
# Modify: 2020-10-01 14:52:28.697308587 +0530
# Change: 2020-10-01 14:52:28.701310587 +0530
#  Birth: -
# 
# Contents of the file are:
# 
# A quick brown fox
# jumps over the 
# lazy dog
# 
# Word count : 9
# 
# Enter the file's name which you want to rename
# 
# file2.txt
# 
# Enter the new name you want to give to the file
# f2.txt
# 
# File renamed
# 
# Enter two file names:
# file1.txt f2.txt
# 
# Copying file 1 to file 2...
# 
# Done






