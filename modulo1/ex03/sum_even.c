#include "sum_even.h"
#include <stdio.h>

int sum_even( int *p, int num){
	int i;
	int soma=0;
		for (i=0;i<num;i++){
		if(*p%2==0){
			//printf("%d",soma);
			soma = soma + *p;
				}
				p++;
			}
		return soma;
}

