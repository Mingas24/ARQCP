#include <stdio.h>
#include "asm.h"

char str1 [30] = "Mahalo e Kawika";
char *ptr1 = str1;

int main(){
	printf("\nAntes:%s", str1);
	int ret = encrypt();	
	printf("\nDepois:%s", str1);
	printf("\nRetorno:%u\n", ret); 
	return 0;
return 0;	
}
