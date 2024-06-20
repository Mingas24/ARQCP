#include <stdio.h>
#include "asm.h"

char *ptr1;

int main(){
	
	char palavra[] = "Davoap";
	ptr1 = palavra;
	printf("Numero de alterações:%d \n", decrypt()); 
	printf("Obtido: %s\n", palavra);
	
	return 0;
}
