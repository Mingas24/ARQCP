#include <stdio.h>
#include "array_sort2.h"

int main(){

int i;
int vec[]={4,3,2,1};

int* ptr = vec;

printf("O vetor inicial é ");
for (i=0;i<4;i++){
printf( "%d",*(ptr+i));
}
array_sort2(ptr,4);

printf(" e o final é ");
for (i=0;i<4;i++){
printf("%d",*(ptr+i));
}
printf("\n");

	return 0;

}
