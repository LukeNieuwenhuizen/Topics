#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include<stdbool.h>  
#include <ctype.h>

bool instructionChecker(char * token){
    if (    (token[0] == 'l' && token[1] == 'd' && token[2] == 'r') ||
            (token[0] == 'm' && token[1] == 'o' && token[2] == 'v')){
        return true;
    }
    
    return false;
}

char * cleaningStrings(char * word){
    char * results;



    return results;
}



int main(int argc, char * argv[]){

    char line[255];             // For reading each lines in a file
    char * token;               // This will be used to get the first word of each line
    int lineCounter = 1;        // Keeping track of current line number in a file


    int regCounter[8] = {0};
    char regLine[8][255] = {{0}};

    int regNumber = 0;
    char regState[8][255] = {{0}};
    bool flag = false;

    int codeBlockCounter;
    char temp[100];
    

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
    


    // Reading each line of the file
    while (fgets(line, sizeof(line), file) != NULL){

        // Tokenise the line, breaking the strings by spaces to get each word
        token = strtok(line, " ,");

        // To limit to which block we want to count up to
        codeBlockCounter = 0;
            
        // This reads the first word of each line
        if ( instructionChecker(token) == true){         // If mov then flag as a moving content of one register to another

            
            // Prints the remaining words in this line, this will be change to anaylse the next part of the instructions
            while (token != NULL){

                // Increment code block counter
                codeBlockCounter++;

                // Check the code block after ldr is a register and determine the register number
                if ((isdigit(token[1])) && codeBlockCounter == 2){

                    // Increment the number of times that certain register have appeared
                    regNumber = atoi(&token[1]);
                    regCounter[regNumber]++;
                    sprintf(temp, " %d", lineCounter);

                    strcpy(regLine[atoi(&token[1])], temp);
                }

                // Store information at the register
                if (codeBlockCounter == 3){
                    if (regState[regNumber][0] == '\0'){
                        strcpy(regState[regNumber], token);
                        printf("Storing %s from line %d at register %d\n", token, lineCounter, regNumber);
                        
                    
                    } else if (strcmp(regState[regNumber], token) != 0){
                        printf("Data overwritten at register %d. New Data: %s, Old Data: %s at line %d\n", regNumber, token, regState[regNumber], lineCounter);
                        strcpy(regState[regNumber], token);
                    }
                }
                

                // Reset tokeniser and remove new line
                token = strtok(NULL, " \n");
            }

            // printf("\n");
            
        }
        
        lineCounter++; // increment the line number
    }


    // Print the array of register counters
    // for (int i = 0; i < 8; i++){
    //     if (regCounter[i] > 0){
    //         printf("Register %d used on line %s\n", i, regLine[i]);
    //     }
        
        
    // }
    
    
    fclose(file);
    return 0;
}



/* 
- Need to account for other instructions such as MOV
- Will need to confirm if I need to worry for instructions such as the STR, this doesn't have anything to do with registers but it does for memory


*/