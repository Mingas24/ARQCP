#include <stdio.h>
#include "compress_shorts.h"

int main(){
	short shorts[10]={1,2,3,4,5,6,7,8,9,0};
	int integers[5];
	
	short *ptr1 = shorts;
	int *ptr2 = integers;
	compress_shorts(ptr1,10,ptr2);
	
	int i;
	for (i = 0; i < 5; i++) {
		printf("%x\n",integers[i]);
	}	
	return 0;
}

