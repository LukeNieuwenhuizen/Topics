#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(int argc, char * argv[]){

    char line[100];             // For reading each lines in a file
    char * token;               // This will be used to get the first word of each line
    int lineCounter = 1;        // Keeping track of current line number in a file
    

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
        token = strtok(line, " ");

        // This will show which line number we are currently on
        printf("%d: ", lineCounter++);

            
        // This reads the first word of each line
        if (strcmp(token, "hello") == 0){           // Chenge hello to instruction

            // Prints the remaining words in this line, this will be change to anaylse the next part of the instructions
            while (token != NULL){

                // EDIT HERE

                printf("%s ", token);

                // TILL HERE

                // Reset tokeniser
                token = strtok(NULL, " ");
            }
            
        }

        printf("\n");

    }
    
    fclose(file);

    return 0;
}