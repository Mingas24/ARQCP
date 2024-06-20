#include <stdio.h>
#include "sum.h"

int main(){
	int a=0;
	int b=0;
	int sume = 11;
	while(sume >= 10){
		printf("Introduza um numero \n");
		scanf("%u", &a);
		printf("Introduza outro numero \n");
		scanf("%u", &b);
		sume = sum(a,b);
		printf("A soma é :%d \n", sume);

	}
	return 0;
}
