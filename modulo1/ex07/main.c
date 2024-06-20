#include <stdio.h>
#include "array_sort1.h"

int main(){

int i;
int vec[]={4,3,2,1};

printf("O vetor inicial é ");
for (i=0;i<4;i++){
printf( "%d",vec[i]);
}

array_sort1(vec,4);

printf(" e o final é ");
for (i=0;i<4;i++){
printf("%d",vec[i]);
}
printf("\n");

	return 0;
}
