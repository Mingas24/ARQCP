#include <stdio.h>
#include "asm.h"

int main(){

int a = 5;
int x = 8;
int* b = &x;
int c = 2;

int res = calc(a,b,c);
printf("O resultado é %d\n",res);
	
	return 0;
}
