#include <stdio.h>
#include "rotate_left.h"
#include "rotate_right.h"

int main(){
	int num = 0x7;
	int nbits = 4;
	int res = rotate_right(num, nbits);
	
	printf("%d , rotação %d bits para a direita %d \n", num, nbits, res);
	
	res = rotate_left(num, nbits);
	printf("%d , rotação %d bits para a esquerda %d \n", num, nbits, res);
	return 0;
}
