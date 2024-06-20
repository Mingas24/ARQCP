#include <stdio.h>
#include "asm.h"

int op1 = 0 , op2 = 0 ; 

int main(void) {
	
printf("Valor 1:");
scanf("%d", &op1);

printf("Valor 2:");
scanf("%d", &op2);

int soma = sum();
printf("A soma é %d\n", soma);

return 0;
}
