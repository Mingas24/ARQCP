#include <stdio.h>
void power_ref(int* x, int y){
	int i;
	int base = *x;
	
	if(y==0){
		*x=1;
	}
	if(y<0){
		*x=0;
	}

	//O valor base é o primeiro valor da potencia, por isso o i começa em 1
	for(i = 1 ; i < y ; i++){
		*x *= base;
	}
}
