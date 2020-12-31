#include<stdio.h>
#include<fcntl.h>
#include<unistd.h>
#include<stdlib.h>
#include<sys/stat.h>

int main(int argc, char *argv[]){
	char buf;
	int size, file_descriptor;
	
	file_descriptor = open(argv[1], O_RDONLY);
	
	 // Set Pointer to EOF -1
	size = lseek(file_descriptor, -1, SEEK_END);
	
	// Do until we cross the beginning of the file from the end
	while(size >= 0){
		// Read the character after the file descriptor and store it in buffer
		read(file_descriptor, &buf, 1);
		// Write that character to STDOUT
		write(STDOUT_FILENO, &buf, 1);
		//Move file pointer back by two characters each time(since we moved one
		// character forward)
		lseek(file_descriptor, -2, SEEK_CUR); 
		
		// Decrease the size by 1
		size--;
	}
	printf("\n\n");
	
	return 0;
}
