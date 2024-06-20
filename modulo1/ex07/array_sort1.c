#include <stdio.h>
void array_sort1(int *vec, int n){
	int i;
	int j;
	int temp=0;
	
	for(i = 0; i < n-1; i++){
		for(j = i+1 ; j < n ; j++){
			if(*(vec+i) > *(vec+j)){
			temp=vec[i];
			vec[i]=vec[j];
			vec[j]=temp;		
			}
		}
	}
}
