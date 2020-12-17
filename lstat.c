// Write a C program to emulate the ls command using stat and lstat API functions .Print File  type, permission etc all the attributes
#include<stdio.h>
#include<unistd.h>
#include<stdlib.h>
#include<sys/stat.h>

int main(int argc, char *argv[])
{
	struct stat statbuf;
	
	
	if(lstat(argv[1], &statbuf) == -1){
	   printf("Couldn't stat file!!");
	   exit(0);
	}
	
	printf("File: %s\n", argv[1]);
	printf("Inode number: %ld\n", statbuf.st_ino);
	printf("Number of links: %ld\n", statbuf.st_nlink);
	printf("Size in Bytes: %ld\n", statbuf.st_size);	
	printf("Type and permission: %o\n", statbuf.st_mode);
	printf("UID= %d\n", statbuf.st_uid);
	printf("GID= %d\n", statbuf.st_gid);
	printf("Blocks allocated: %ld\n", statbuf.st_blocks);
	exit(0);
}

