//Write a C Program to create a new process using Fork  operation   .Print the 
//Process ID of the  child and its parent  in the child process and print the 
//process Id of parent,child Pid and parent’s parent process Id in Parent.Make 
//the parent to sleep for 3 seconds.

#include<stdio.h>
#include<unistd.h>

int main(){
	int return_value = fork();
	if(return_value == 0){
		printf("This is the child process, child process Id is: %d\n", getpid());
		printf("Child's parent process Id is: %d\n", getppid());
	}
	else{
		sleep(3);
		printf("\nThis is parent process, parent process Id is: %d\n", getpid());
		printf("Parent's parent process Id is: %d\n", getppid());
		printf("Return value of fork to parent(Child's process Id): %d\n", return_value);
	}
	return 0;
}
