#include <stdio.h>
#include "getArea.h"

int main(void) {
	
	int retorno;
	retorno = getArea();
	printf("O valor da área do triângulo para os valores de 2 e 3 é de: \n%d\n", retorno);
	return 0;
}
