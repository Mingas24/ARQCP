#include "sum_even.h"
#include <stdio.h>

int main(){
	int sum[]={1,2,3,4,5,6,7,8,9,10};
	int* ptr;
	ptr=sum;
	printf("A soma dos valores pares é %d \n",sum_even(ptr,10));
	
	return 0;
}
