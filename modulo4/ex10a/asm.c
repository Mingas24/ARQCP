#include <stdio.h>
#include "asm.h"

int count_bits_zero(int x){
	
	int mask = 0b00000001;
	int contador = 0;
	int i;
	
	for(i = 0; i < 32; i++){
		if ((x & (mask << i)) == 0){
			contador ++;
		}
	}
	return contador;
}
