#include <stdio.h>
#include "changes.h"
#include "changes_vec.h"

int main(void) {
	
	int num=3;
	int vec[] = {0x00600000,0x00700000,0x00800000};
	int *ptrvec=vec;
	changes_vec(ptrvec,num);
	printf("Primeira posição do vetor:(0x%08x)\n",vec[0]);
	printf("Segunda posição do vetor:(0x%08x)\n",vec[1]);
	printf("Terceira posição do vetor:(0x%08x)\n",vec[2]);
}
