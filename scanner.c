#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdbool.h>  
#include <ctype.h>

bool instructionChecker(char * token){
    if (    (token[0] == 'l' && token[1] == 'd' && token[2] == 'r') ||
            (token[0] == 'm' && token[1] == 'o' && token[2] == 'v') ||
            (token[0] == 'e' && token[1] == 'o' && token[2] == 'r')){
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

    char regState[8][255] = {0};
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

    char shares[30][255]= {"0"};

    // char * shareA[] = { "a00", "a01", "a02", "a03",
    //                     "a10", "a11", "a12", "a13",
    //                     "a20", "a21", "a22", "a23"  };

    // char * shareB[] = { "b00", "b01", "b02", "b03",
    //                     "b10", "b11", "b12", "b13",
    //                     "b20", "b21", "b22", "b23"  };







    
    /*                          Assembly code Handling                          */

    // Reading each line of the file
    while (fgets(line, sizeof(line), file) != NULL){

        // Tokenise the line, breaking the strings by spaces to get each word
        token = strtok(line, " ,\t");
            
        // This reads the first word of each line
        if ( instructionChecker(token) == true ){         
            int rows = 0;
            bool getEquiv = false;
            bool offsetStatus = false;
            char * currentVal;

            // Prints the remaining words in this line, this will be change to anaylse the next part of the instructions
            while (token != NULL){

                
                if (token[0] == '['){
                    offsetStatus = true;
                }
                

                // Cleaning up strings
                char * results = cleaningStrings(token);

                storeCommands[rows] =  malloc(sizeof(char) * (strlen(line) - 1));
                strcpy(storeCommands[rows], results);


                // This is for testing
                // printf("%s ", results);
                

                if (storeCommands[2] != NULL && strcmp(storeCommands[2], "r7") == 0){
                    bool getEquiv = true;
                    
                    if (strcmp(results, "116") == 0){
                        strcpy(shares[atoi(results)/4], "a00");
                    } else if (strcmp(results, "112") == 0){
                        strcpy(shares[atoi(results)/4], "a01");
                    } else if (strcmp(results, "108") == 0){
                        strcpy(shares[atoi(results)/4], "a02");
                    } else if (strcmp(results, "104") == 0){
                        strcpy(shares[atoi(results)/4], "a03");
                    } else if (strcmp(results, "100") == 0){
                        strcpy(shares[atoi(results)/4], "a10");
                    } else if (strcmp(results, "96") == 0){
                        strcpy(shares[atoi(results)/4], "a11");
                    } else if (strcmp(results, "92") == 0){
                        strcpy(shares[atoi(results)/4], "a12");
                    } else if (strcmp(results, "88") == 0){
                        strcpy(shares[atoi(results)/4], "a13");
                    } else if (strcmp(results, "84") == 0){
                        strcpy(shares[atoi(results)/4], "a20");
                    } else if (strcmp(results, "80") == 0){
                        strcpy(shares[atoi(results)/4], "a21");
                    } else if (strcmp(results, "76") == 0){
                        strcpy(shares[atoi(results)/4], "a22");
                    } else if (strcmp(results, "72") == 0){
                        strcpy(shares[atoi(results)/4], "a23");

                    } else if (strcmp(results, "68") == 0){
                        strcpy(shares[atoi(results)/4], "b00");
                    } else if (strcmp(results, "64") == 0){
                        strcpy(shares[atoi(results)/4], "b01");
                    } else if (strcmp(results, "60") == 0){
                        strcpy(shares[atoi(results)/4], "b02");
                    } else if (strcmp(results, "56") == 0){
                        strcpy(shares[atoi(results)/4], "b03");
                    } else if (strcmp(results, "52") == 0){
                        strcpy(shares[atoi(results)/4], "b10");
                    } else if (strcmp(results, "48") == 0){
                        strcpy(shares[atoi(results)/4], "b11");
                    } else if (strcmp(results, "44") == 0){
                        strcpy(shares[atoi(results)/4], "b12");
                    } else if (strcmp(results, "40") == 0){
                        strcpy(shares[atoi(results)/4], "b13");
                    } else if (strcmp(results, "36") == 0){
                        strcpy(shares[atoi(results)/4], "b20");
                    } else if (strcmp(results, "32") == 0){
                        strcpy(shares[atoi(results)/4], "b21");
                    } else if (strcmp(results, "28") == 0){
                        strcpy(shares[atoi(results)/4], "b22");
                    } else if (strcmp(results, "24") == 0){
                        strcpy(shares[atoi(results)/4], "b23");
                        
                    } else if (strcmp(results, "20") == 0){
                        strcpy(shares[atoi(results)/4], "var1");
                    } else if (strcmp(results, "16") == 0){
                        strcpy(shares[atoi(results)/4], "var2");
                    } else if (strcmp(results, "12") == 0){
                        strcpy(shares[atoi(results)/4], "var3");
                    } else if (strcmp(results, "8") == 0){
                        strcpy(shares[atoi(results)/4], "var4");
                    } else if (strcmp(results, "4") == 0){
                        strcpy(shares[atoi(results)/4], "var5");
                    } 

                    currentVal = shares[atoi(results)/4];
                }                 
                
                rows++;

                // Reset tokeniser and remove new line
                token = strtok(NULL, " \n");
            }

            // This is for LDR
            if (strcmp(storeCommands[0], "ldr") == 0){
                // printf("Checking ldr\n");
                char * temp1 = &storeCommands[1][1];
                int num = atoi(temp1);

                char prevLDR[255];

                if (strcmp(regState[num], "\0") != 0){
                    strcpy(prevLDR, regState[num]);
                } else {
                    strcpy(prevLDR, "NULL");
                }
                

                if (offsetStatus == true){
                    strcpy(regState[num], currentVal);
                } else {
                    strcpy(regState[num], storeCommands[2]);
                }

                if ( regState[num][0] != prevLDR[0] && (regState[num][1] == prevLDR[1]) && (regState[num][2] == prevLDR[2])){
                    printf("%d: ldr %s, %s    (was %s)\n", lineCounter, storeCommands[1], regState[num], prevLDR);
                }
            }

            
            // This is for movs
            if ( strcmp(storeCommands[0], "movs") == 0){
                // printf("Checking ldr\n");
                char * temp1 = &storeCommands[1][1];
                int num = atoi(temp1);

                char prevLDR[255];

                if (strcmp(regState[num], "\0") != 0){
                    strcpy(prevLDR, regState[num]);
                } else {
                    strcpy(prevLDR, "NULL");
                }
                

                if (offsetStatus == true){
                    strcpy(regState[num], currentVal);
                } else {
                    strcpy(regState[num], storeCommands[2]);
                }

                if ( regState[num][0] != prevLDR[0] && (regState[num][1] == prevLDR[1]) && (regState[num][2] == prevLDR[2])){
                    printf("%d: movs %s, %s    (was %s)\n", lineCounter, storeCommands[1], regState[num], prevLDR);
                }
            }
            
            

            // This is for EOR
            if ( strcmp(storeCommands[0], "eors") == 0){
                char * temp1 = &storeCommands[1][1];
                int num1 = atoi(temp1);

                char * temp2 = &storeCommands[2][1];
                int num2 = atoi(temp2);

                // printf("%d: eors %s, %s\n", lineCounter, regState[num1], regState[num2]);
                
            }




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