#include <stdio.h>
#include "asm.h"

char str1 [20] = "Mahalo";
char str2 [20] = " e Kawika";
char str3 [40];
char *ptr1 = str1; 
char *ptr2 = str2;
char *ptr3 = str3;

int main(void) {
	
	str_cat();
	printf("String final : %s\n", str3);
	return 0;
}
