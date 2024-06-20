#include "counter.h"
#include <stdio.h>

#define SIZE 5


int main(){

int a[SIZE] = {3, 5, 10, 154, 154};


printf("Numeros repetidos:	%d\n", count(a, SIZE, 154) );


return 0; 
}
