#include "counter.h"
#include <stdio.h>


int count(int *vec, int n, int value){
	int counter = 0;
	int i = 0;
	
	for(i = 0; i< n; i++){
	
	if(vec[i] == value) counter++;
	}
	
	return counter;
	
}
