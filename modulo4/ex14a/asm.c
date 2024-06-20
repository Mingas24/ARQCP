#include <stdio.h>
int join_bits(int a, int b, int pos){
	
	
	int inc_pos;
	if(pos<31){
		//b31+...+b(pos+1)
		inc_pos = pos+1;
		//mascara para alterar os bits mais à esquerda
		int mask_b_pos=0xFFFFFFFF << (inc_pos);
		b = b & mask_b_pos; //aplica mascara a b
	}else{ //quando pos=31
		b = 0; //não alterar o valor de b31
	}
	inc_pos = 31 - pos; //nr de shift à direita
	int mask_a_pos = 0xFFFFFFFF >> inc_pos; //mascara para alterar os bits mais à direita
	a = a & mask_a_pos;//aplica mascara a a

	int join = a|b;	//junta a e b 
	return join;
}
