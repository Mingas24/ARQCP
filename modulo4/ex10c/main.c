#include <stdio.h>
#include "count_bits_zero.h"

int main(){
	int num = 5;
	int vec[] = {0,0,0,0,1};
	int *ptr = vec;
	int res = vec_count_bits_zero(ptr, num);
	printf("O vetor tem %d bits a zero\n", res);
	return 0;
}
