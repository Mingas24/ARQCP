#include <stdio.h>
#include "sum3.h"

int op1 = 0 , op2 = 0 ; 
extern int op3;
extern int op4;

int main(void) {
	
printf("Valor 1:");
scanf(" %d", &op1);

printf("Valor 2:");
scanf(" %d", &op2);

int soma = sum_v3();
printf("A soma é %d\n", soma);

return 0;

}
