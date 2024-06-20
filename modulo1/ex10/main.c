#include <stdio.h>
#include "odd_sum.h"

int main(void){
	int array[7] = {6,1,5,2,5,6,7,};
	int *ptr;
	ptr = array;
	int sum = odd_sum(ptr);
	printf("%d \n", sum);
	return 0;
}
