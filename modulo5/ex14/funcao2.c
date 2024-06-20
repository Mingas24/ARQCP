#include "funcao.h"

int **add_matrixes(int **a, int **b, int y, int k){
	
	int **sum = new_matrix(y, k);
	int *linhaSum = (int *)sum;
	int *colunaSum;

	int *linhaA = (int *)a;
	int *linhaB = (int *)b;
	int *colunaA;
	int *colunaB;
	int i, j;
	for (i = 0; i < y; i++){
		colunaA = (int *) *(linhaA+i);
		colunaB = (int *) *(linhaB+i);
		colunaSum = (int *) *(linhaSum+i);
		
		for (j = 0; j < k; j++){
			*(colunaSum+j) = (*(colunaA+j)) + (*(colunaB+j));
		}
	}
	return sum;
}