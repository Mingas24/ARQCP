#include <stdio.h>
#include "struct.h"
#include "asm.h"

int main(){
	s2 a;
	short vw[3] = {1,2,3};
	int vj = 5;
	char vc[3] = "abc";
	fill_s2(&a, vw, vj, vc);
	printf("%d\n", a.w[0]);
	printf("%d\n", a.w[1]);
	printf("%d\n", a.w[2]);
	printf("%d\n", a.j);
	printf("%c\n", a.c[0]);
	printf("%c\n", a.c[1]);
	printf("%c\n", a.c[2]);
	return 0;
}