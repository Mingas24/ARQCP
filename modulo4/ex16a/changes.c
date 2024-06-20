#include "changes.h"
#define mask1 0x00800000 		//binario -->00000000.00000000.00001000.00000000 || decimal --> 128
								// 1000(4bits do 3ºbyte)= 8 em decimal
#define mask2 0x00f00000		//binario -->00000000.00000000.11110000.00000000 || decimal --> 240
								// 1111 maior numero em binario com 4bits que se consegue escrever
void changes(int *ptr)
{
	if (*ptr & mask1)	//se os 4 bits foram maior que 7
	{
		*ptr ^= mask2;	//inverte os 4 bits mais significativos
						//^ em C é XOR em assembly
	}
}
