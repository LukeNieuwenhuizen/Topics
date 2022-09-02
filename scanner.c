#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdbool.h>  
#include <ctype.h>

bool instructionChecker(char * token){
    if (    (token[0] == 'l' && token[1] == 'd' && token[2] == 'r') ||
            (token[0] == 'm' && token[1] == 'o' && token[2] == 'v')){
        return true;
    }
    
    return false;
}

char * cleaningStrings(char * word){

    for (int i = 0, j; word[i] != '\0'; ++i) {
        while ( !(word[i] >= 'a' && word[i] <= 'z') && 
                !(word[i] >= 'A' && word[i] <= 'Z') && 
                !(word[i] >= '0' && word[i] <= '9') &&
                !(word[i] == '\0') && !(word[i] == '#')) {
         
            for (j = i; word[j] != '\0'; ++j) { 
                word[j] = word[j + 1];
            }
         
            word[j] = '\0';
      }
   }


    return word;
}



int main(int argc, char * argv[]){

    char line[255];             // For reading each lines in a file
    char * token;               // This will be used to get the first word of each line
    int lineCounter = 1;        // Keeping track of current line number in a file

    int regNumber = 0;
    int nextRegNumber = 0;
    char regState[8][255] = {{"0"}, {"0"}, {"0"}, {"0"}, {"0"}, {"0"}, {"0"}, {"0"}};    

    char newData[255];
    char currentData[255];

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
        if ( instructionChecker(token) == true){         

            
            // Prints the remaining words in this line, this will be change to anaylse the next part of the instructions
            while (token != NULL){

                // Cleaning up strings
                char * results = cleaningStrings(token);

                // Increment code block counter
                codeBlockCounter++;

                // Check the code block after ldr is a register and determine the register number
                if ((isdigit(token[1])) && codeBlockCounter == 2){

                    // Get the store old register number
                    regNumber = atoi(&token[1]);
                    strcpy(currentData, regState[regNumber]);
                }

                

                // Store information at the register
                if (codeBlockCounter == 3){

                    if (results[0] == 'r'){
                        nextRegNumber = atoi(&token[1]);
                        strcpy(newData, regState[nextRegNumber]);
                    } else {
                        strcpy(newData, results);
                    }
                    
                    // Case for when there is new data and register have not been replaced yet                    
                    if (strcmp(regState[regNumber], "0") == 0 && strcmp(newData, currentData) != 0){
                        // printf("Storing new data at register %d. New data: %s at line %d\n", regNumber, newData, lineCounter);
                        strcpy(regState[regNumber], newData);
                    
                    } else if (strcmp(regState[regNumber], newData) != 0 || strcmp(currentData, newData) != 0){
                        printf("Data overwritten at register %d. New Data: %s, Old Data: %s at line %d\n", regNumber, newData, currentData, lineCounter);
                        strcpy(regState[regNumber], newData);

                    }
                }

                // Reset tokeniser and remove new line
                token = strtok(NULL, " \n");
            }
        }
        
        lineCounter++; // increment the line number
    }    
    
    // Printing out the last status of the registers
    // printf("\n");
    // for (int i = 0; i < 8; i++){
    //     printf("RegState %d: %s\n", i, regState[i]);
    // }
    


    fclose(file);
    return 0;
}