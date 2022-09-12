#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "reader.h"


void reader(int argc, char * argv[]){

    /*                          Declare Variables                       */

    char line[255];             // For reading each lines in a file
    char * token;               // This will be used to get the first word of each line
    int lineCounter = 1;        // Keeping track of current line number in a file

    int regNumber = 0;
    int nextRegNumber = 0;
    char regState[8][255] = {{0}};    

    char newData[255];
    char currentData[255];

    int codeBlockCounter;
    char temp[100];
    

    /*                          File Handling                           */

    // Error handling for not including file as parameter
    if (argc < 2){
        printf("Missing File\n");
        exit(EXIT_SUCCESS);
    
    } else if (argc > 2){
        printf("Too Many Parameters\n");
        exit(EXIT_SUCCESS);
    }


    // Reading the file and error handling
    FILE * file = fopen(argv[1], "r");

    if (file == NULL){
        printf("File Not Found\n");
        exit(EXIT_SUCCESS);
    }
    
    /*                          Assembly code Handling                          */

    // Reading each line of the file
    while (fgets(line, sizeof(line), file) != NULL){

        
        
        lineCounter++; // increment the line number
    }    
    
    // Printing out the last status of the registers
    // printf("\n");
    // for (int i = 0; i < 8; i++){
    //     printf("RegState %d: %s\n", i, regState[i]);
    // }
    


    fclose(file);
}

void getLine(){

}

void getLineNumber(){
    
}