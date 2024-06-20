#include <stdio.h>
#include "power_ref.h"

int main(){
	int x = 3;
	int y = 3;	
	int* ptr= &x;
	
	//imprime o valor de x antes de ser modificado por referência
	printf("A potencia de base %d ",x);
	
	power_ref(ptr,y);
	
	printf("elevada a %d é igual a %d\n",y, x);
	return 0;
}
