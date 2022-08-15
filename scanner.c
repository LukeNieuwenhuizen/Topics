#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>

int main(int argc, char * argv[]){

    char line[255];             // For reading each lines in a file
    char * token;               // This will be used to get the first word of each line
    int lineCounter = 1;        // Keeping track of current line number in a file


    int regCounter[8] = {0};
    char regLine[8][255] = {{0}};
    

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
    
    int codeBlockCounter;
    char temp[100];

    // Reading each line of the file
    while (fgets(line, sizeof(line), file) != NULL){

        // Tokenise the line, breaking the strings by spaces to get each word
        token = strtok(line, " ");

        codeBlockCounter = 0;
            
        // This reads the first word of each line
        if (token[0] == 'l' && token[1] == 'd' && token[2] == 'r'){       // If ldr then flag this as a register



            // This will show which line number it is currently on
            // printf("%d: ", lineCounter);

            // Prints the remaining words in this line, this will be change to anaylse the next part of the instructions
            while (token != NULL){

                codeBlockCounter++;

                // Check the code block after ldr is a register and determine the register number
                if ((isdigit(token[1])) && codeBlockCounter == 2){

                    // Increment the number of times that certain register have appeared
                    regCounter[atoi(&token[1])]++;
                    sprintf(temp, " %d", lineCounter);

                    strcat(regLine[atoi(&token[1])], temp);


                    codeBlockCounter++;
                }

                // Reset tokeniser
                token = strtok(NULL, " ");
            }

            // printf("\n");
            
        }
        
        lineCounter++; // increment the line number
    }


    // Print the array of register counters
    for (int i = 0; i < 8; i++){
        if (regCounter[i] > 0){
            printf("r%d: %d. Register used on line %s\n", i, regCounter[i], regLine[i]);
            // printf("r%d: %d. Register used on line %s\n", i, regCounter[i], regLine[i]);
        }
        
        
    }
    
    
    fclose(file);
    return 0;
}