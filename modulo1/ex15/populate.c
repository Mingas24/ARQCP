#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include "populate.h"

void populate( int *vec , int num, int limit){
	
	int i ;
	srand(time(NULL));
		
		for (i = 0 ; i < num ; i ++){
			*(vec + i) = rand() % limit;
		} 
}
