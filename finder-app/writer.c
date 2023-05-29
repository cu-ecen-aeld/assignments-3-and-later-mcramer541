// Assignment 2, Matthew Cramer
//


#include <stdio.h>
#include <stdlib.h>
#include <syslog.h>





int main(int argc, char *argv[]) {

// These are the writefile and writestr from the command line 

	char *writefile = argv[1];
	char *writestr = argv[2];
	
	if (argc != 2) {
		syslog(LOG_USER | LOG_ERR, "Incorrect number of arguments!");
		return 1;

	}
	
	FILE *file = fopen(writefile, "w");
	
	//check to see if the file exists, if it doesn't exist, show the error otherwise, exit
	if (file == NULL) {
		syslog(LOG_USER | LOG_ERR, "Unable to access the file!");
		return 1;
	}
	
	//Log what what written to the file
	syslog(LOG_USER | LOG_DEBUG, "Writing %s to %s",writestr,writefile);
	
	//Write the values to the file
	fprintf(file, "%s",writestr);
	
	//Close the file
	fclose(file);
	
	return 0;



}
