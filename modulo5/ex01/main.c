#include <stdio.h>

int main(void){
	
	union union_u1{ 
		char vec[32];
		float a; 
		int b; 
	} u;
	
	struct struct_s1{
		char vec[32];
		float a;
		int b;
	} s;
	
	printf("Size union:%d \n", sizeof(u));
	printf("Size struct:%d \n", sizeof(s));
	
	return 0;
}