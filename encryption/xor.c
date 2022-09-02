#include <stdio.h>
#include <memory.h>

unsigned char xorValues[256];
unsigned char hiddenValues[256];
int numValues=0;
int numChars;

// Fast bit counter
unsigned char CountBits(int value){
  return (value * 01001001001ULL & 042104210421ULL) % 017;
}

// fills array xorValues with values from 0-255 that have 4 or more 1 bits set
void genXorValues() {
  int index=0;
  for (int i=0;i<256;i++){
    if (CountBits(i)>=4){
      xorValues[index++]=i;
    }
  }
  numValues = index;
}

// Xors all chars in text and stores in hiddenValues
void xorText(char * text){
  memset(hiddenValues,0,sizeof(hiddenValues));
  int xorIndex=0;
  for (int i=0;i<numChars;i++){
    hiddenValues[i] = text[i] ^ xorValues[xorIndex++];
    if (xorIndex==numValues){
      xorIndex=0;
    }
  }
}

int main(int argc, char* argv[])
{
  char * plainText="This is the message to hide";
  numChars = strlen(plainText);
  genXorValues();
  xorText(plainText);
  for (int i=0;i<numChars;i++){
    printf("%3d %3d\n",plainText[i],hiddenValues[i]);
  }
  return 0;
}