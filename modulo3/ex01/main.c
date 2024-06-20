#include <stdio.h>
#include "asm.h"

char str[] = "012340567890";
char* ptr1 = str;

int main(){
	
	int count = zero_count();
	
	printf("O número 0 aparece %d vez(es)\n", count);
	
	return 0;
}
