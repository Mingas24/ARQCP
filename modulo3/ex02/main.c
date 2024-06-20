#include <stdio.h>
#include "asm.h"

char str1 [] = "vvvvv";
char str2 [100];
char* ptr1 = str1;
char* ptr2 = str2;

int main(){

printf("A frase inicial é %s ",str1);

str_copy_porto();

printf("e a final é %s\n",str2);
return 0;	
}
