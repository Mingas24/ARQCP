#include <stdio.h>
#include "asm.h"

int main()	{
	int x = 0x123;
	char vec[] = {1,1,-30};
	char* ptr = vec;
	int res = sum_multiples_x(ptr, x);
	printf("The sum of the multiples of the 2nd byte is: %d\n", res);
	return 0;

}
