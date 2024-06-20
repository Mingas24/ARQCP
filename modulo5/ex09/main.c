#include <stdio.h>
#include "struct.h"
#include "asm.h"

int main(void){
	
	structA s1;
	structB s2;
	
	s1.x = 10;
	s1.y = 11;
	s2.a.x = 99;
	s2.a.y = 100;
	s2.b = &s1;
	s2.x = 1;
	s2.c = '2';
	s2.y = 3;
	s2.e[0] = 'Y';
	s2.e[1] = 'E';
	s2.e[2] = 'T';
	s2.z = 420; 
	
	printf("%hd \n", fun1(&s2));
	printf("%hd \n", fun2(&s2));
	printf("%hd \n", *fun3(&s2));
	printf("%hd \n", fun4(&s2));
	
	return 0;
}