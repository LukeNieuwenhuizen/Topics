#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdbool.h>  
#include <ctype.h>

bool instructionChecker(char * token){
    if (    (token[0] == 'l' && token[1] == 'd' && token[2] == 'r') ||
            (token[0] == 'm' && token[1] == 'o' && token[2] == 'v') ||
            (token[0] == 'e' && token[1] == 'o' && token[2] == 'r') ||
            (token[0] == 's' && token[1] == 't' && token[2] == 'r') ){
        return true;
    }
    
    return false;
}

// Get the size of the array
int getSize(char * commands[]){
    int size = 0;

    while (commands[size] != NULL){
        size++;
    }

    return size;
}



char * cleaningStrings(char * word){

    for (int i = 0, j; word[i] != '\0'; ++i) {
        while ( !(word[i] >= 'a' && word[i] <= 'z') && 
                !(word[i] >= 'A' && word[i] <= 'Z') && 
                !(word[i] >= '0' && word[i] <= '9') &&
                !(word[i] == '\0') /*&& !(word[i] == '#')*/) {
         
            for (j = i; word[j] != '\0'; ++j) { 
                word[j] = word[j + 1];
            }
         
            word[j] = '\0';
      }
   }
    return word;
}



int main(int argc, char * argv[]){

    /*                          Declare Variables                       */

    char line[255];             // For reading each lines in a file
    char * token;               // This will be used to get the first word of each line
    int lineCounter = 1;        // Keeping track of current line number in a file

    char regState[8][6][255] = {{0}};
    char * storeCommands[6] = {0};
    

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

    int sharesPos = 0;

    char currentVal[255];


    char shares[30][6][255]= {  {"NULL"}, {"vTemp"}, {"vb2"}, {"va2"}, {"vb1"}, {"va1"},
                                {"b23"}, {"b22"}, {"b21"}, {"b20"}, {"b13"}, {"b12"}, {"b11"}, {"b10"}, {"b03"}, {"b02"}, {"b01"}, {"b00"},
                                {"a23"}, {"a22"}, {"a21"}, {"a20"}, {"a13"}, {"a12"}, {"a11"}, {"a10"}, {"a03"}, {"a02"}, {"a01"}, {"a00"}};


    // Reading each line of the file
    while (fgets(line, sizeof(line), file) != NULL){

        // Tokenise the line, breaking the strings by spaces to get each word
        token = strtok(line, " ,\t");
            
        // This reads the first word of each line
        if ( instructionChecker(token) == true ){         
            int rows = 0;
            // bool offsetStatus = false;
            

            // Prints the remaining words in this line, this will be change to anaylse the next part of the instructions
            while (token != NULL){                

                // Cleaning up strings
                char * results = cleaningStrings(token);

                storeCommands[rows] =  malloc(sizeof(char) * (strlen(line) - 1));
                strcpy(storeCommands[rows], results);


                if (storeCommands[2] != NULL && strcmp(storeCommands[2], "r7") == 0 && strcmp(storeCommands[0], "str") != 0){                    
                    strcpy(currentVal, shares[atoi(results)/4][0]);
                }

                rows++;

                // Reset tokeniser and remove new line
                token = strtok(NULL, " \n");
            }

            // This is for LDR
            if (strcmp(storeCommands[0], "ldr") == 0){
                
                // Determines what the desination position value is
                char * temp1 = &storeCommands[1][1];
                int num = atoi(temp1);

                // Determine what the incoming position value is
                char * temp2 = &storeCommands[2][1];
                int num2 = atoi(temp2);

                char prevRegState[255] = "NULL";

                if (strcmp(regState[num][0], "\0") != 0 && regState[num][0] != NULL && strcmp(regState[num][0], "NULL") != 0){
                    strcpy(prevRegState, regState[num][0]);
                } else {
                    strcpy(regState[num][0], "NULL");
                }

                if (strcmp(regState[num2][0], "\0") == 0 && regState[num2][0] == NULL && strcmp(regState[num2][0], "NULL") == 0){
                    strcpy(regState[num2][0], "NULL");
                }

                if (getSize(storeCommands) < 4 && storeCommands[2][1] == '7'){
                    strcpy(regState[num][0], "SP");
                }                

                // Need to consider offset with register 3 still
                if (getSize(storeCommands) >= 4 && storeCommands[2][1] != '3'){
                    strcpy(regState[num][0], currentVal);
                }


                // if ( regState[num][0] != prevRegState[0] && (regState[num][1] == prevRegState[1]) && (regState[num][2] == prevRegState[2])){
                //     // printf("%d: ldr %s, %s    (was %s)\n", lineCounter, storeCommands[1], regState[num], prevLDR);
                //     printf("%d: share %s overwritten by share %s\n", lineCounter, prevRegState, regState[num]);
                // }

                printf("%d: ldr %s, %s\n", lineCounter, prevRegState, regState[num][0]);
            }

            
            // This is for movs
            if ( strcmp(storeCommands[0], "movs") == 0){
                // printf("Checking ldr\n");
                char * temp1 = &storeCommands[1][1];
                int num = atoi(temp1);

                char * temp2 = &storeCommands[2][1];
                int num2 = atoi(temp2);

                char prevRegState[255];

                if (strcmp(regState[num][0], "\0") != 0){
                    strcpy(prevRegState, regState[num][0]);
                } else {
                    strcpy(prevRegState, "NULL");
                }

                if (getSize(storeCommands) < 4 && storeCommands[2][1] == '7'){
                    strcpy(regState[num][0],"SP");
                }
                

                if (storeCommands[2][0] != 'r'){
                    strcpy(regState[num][0], currentVal);
                } else {
                    
                    strcpy(regState[num][0], regState[num2][0]);
                }

                // if ( regState[num][0] != prevRegState[0] && (regState[num][1] == prevRegState[1]) && (regState[num][2] == prevRegState[2])){
                    // printf("%d: movs %s, %s    (was %s)\n", lineCounter, storeCommands[1], regState[num], prevRegState);
                // }

                for (int i = 0; i < 6; i++){
                    if ( strcmp(regState[num][i], "\0") != 0 && strcmp(regState[num][i], "NULL") != 0){
                        printf("%d: movs %s, %s\n", lineCounter, prevRegState, regState[num][i]);
                    }
                }
            }
            
            

            // This is for EOR
            if ( strcmp(storeCommands[0], "eors") == 0){
                char * temp1 = &storeCommands[1][1];
                int num1 = atoi(temp1);

                char * temp2 = &storeCommands[2][1];
                int num2 = atoi(temp2);


                for (int i = 0; i < 6; i++){
                    if ( strcmp(regState[num1][i], "\0") != 0 && strcmp(regState[num1][i], "NULL") != 0){
                        printf("%d: eors %s, %s\n", lineCounter, regState[num1][i], regState[num2][i]);
                    }
                }
                

                


                

                // Testing
                // printf("%d: eors %s, %s\n", lineCounter, regState[num1][0], regState[num2][0]);
                
            }

            
            // /*
            // This is for STR
            if ( strcmp(storeCommands[0], "str") == 0 && storeCommands[3] != NULL && strcmp(storeCommands[2], "r7") == 0){

                // This will grab the destination eg r3
                char * temp1 = &storeCommands[1][1];
                int num = atoi(temp1);

                // This grabs the offset location
                char * temp2 = storeCommands[3];
                int num2 = atoi(temp2)/4;

                // Store current value before it gets replaced by the new value
                char prevMemory[255];

                if (strcmp(shares[num2][0], "\0") != 0 && shares[num2][0] != NULL){
                    strcpy(prevMemory, shares[num2][0]);
                } else {
                    strcpy(prevMemory, "NULL");
                }

                if (strcmp(regState[num][0], "\0") != 0 && regState[num][0] != NULL && strcmp(regState[num][0], "NULL") != 0){
                    strcpy(shares[num2][0], regState[num][0]);
                } else {
                    strcpy(shares[num2][0], "NULL");
                }

                // if (strcmp(prevMemory, shares[0][num2]) != 0 && regState[num][0] != prevMemory[0] && (regState[num][1] == prevMemory[1]) && (regState[num][2] == prevMemory[2])){
                    // printf("%d: %s overwritten by %s in memory\n", lineCounter, prevMemory, shares[num2][0]);
                // }

                printf("%d: str %s, %s\n", lineCounter, shares[num2][0], prevMemory);
            }
            // */



            // Print values and make them NULL and free the commands
            int a = getSize(storeCommands);
            for (int i = 0; i < a; i++){
                // printf("%s\n", storeCommands[i]);
                storeCommands[i] = NULL;
            }
            // printf("\n");
        }

        // Freeing commands
        int k = getSize(storeCommands);
        for (int i = 0; i < k; i++){
            free(storeCommands[i]);
        }
        
        lineCounter++; // increment the line number
    }    
    
    // Printing out the last status of the registers
    // for (int i = 0; i < 8; i++){
    //     printf("RegState %d: %s\n", i, regState[i]);
    // }

    // for (int i = 0; i < 30; i++){
    //     if (shares[30-i] != NULL){
    //         printf("%s\n", shares[30-i]);
    //     }
    // }
    


    fclose(file);
    return 0;
}