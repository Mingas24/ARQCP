#include <stdio.h>
#include "steps.h"

	int num = -120;

int main(void) {
	
	char retorno;
	retorno = check_num();
	printf("O retorno é: \n%d\n", retorno);
	return 0;
}
