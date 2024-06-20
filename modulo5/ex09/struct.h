#ifndef STRUCT_H
#define STRUCT_H
	
	typedef struct { 
		short x;
		int y;
	} structA;
	
	typedef struct { 
		structA a;
		structA *b;
		int x; 
		char c; 
		int y; 
		char e[3]; 
		short z; 
	} structB;
	
	
#endif