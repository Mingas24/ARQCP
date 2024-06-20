#include <stdio.h>
#include "p_decimal.h"
#include "p_inteira.h"

int main(){
	char num[1000000];
	printf("Insira um número:");
	gets(num);
	printf("Parte inteira:%u\n",inteira(num));
	printf("Parte decimal:%u\n",decimal(num));
	
	return 0;
}
	
