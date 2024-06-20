#include <stdio.h>
#include "copy_vec.h"

int main(){
	//Criação do primeiro vetor
	int vec1[] ={1,2,3,4,5,6,7,8,9};
	//Criação do primeiro vetor
	int vec2[] ={9,8,7,6,5,4,3,2,1};
	//Criação do primeiro apontador
	int *ptr1;
	//Criação do segundo apontador
	int *ptr2;
	//Criação do numero de posiçoes
	int n=0;
	//Atribui o local da memória do 1º vetor ao apontador
	ptr1 = vec1;
	//Atribui o local da memória do 2º vetor ao apontador
	ptr2 = vec2;
	printf("Quantas posições quer mudar? \n");
	scanf("%u", &n);
	//Chama o método copy_vec
	copy_vec(ptr1, ptr2, n);
	int i;
	//Indica as posições dos vetores
	for(i=0; i<9; i++){
		printf("A posicao %d é : %d \n" ,i+1, vec2[i]);
	}
	return 0;
}
