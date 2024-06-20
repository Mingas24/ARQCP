#include <stdio.h>
#include <string.h>

int main( void ){
	union union_u1{
		char vec[32];
		float a;
		int b;
	} u;
	
	union union_u1 *ptr;
	ptr = &u;
	strcpy(ptr->vec, "arquitectura de computadores" ); //Atribui a string à union
	printf( "[1]=%s\n", ptr->vec );					//imprime a string que foi anteriormente atribuida à union
	ptr->a = 123.5;					//atribui o float 123.5 à union
	printf( "[2]=%f\n", ptr->a );	//imprime o float que foi anteriormente atribuido à union
	ptr->b = 2;						//atribui o int 2 à union
	printf( "[3]=%d\n", ptr->b );		//imprime o int que foi atribuido anteriormente à union
	printf( "[1]=%s\n", ptr->vec );		//vai buscar o vec declarado em union mas a ultima coisa que lhe foi passada foi um int 2 eliminando a string que se passou antes, logo não imprime a string
	printf( "[2]=%f\n", ptr->a );		//vai buscar o float declarado em union mas a ultima coisa que lhe foi passada foi um int 2 eliminando o float que se passou antes, logo não imprime o valor direito
	printf( "[3]=%d\n", ptr->b );		//vai buscar o int declarado em union e como a ultima coisa passada à union foi efetivamente um int 2, o programa imprime o inteiro como deve ser
	return 0;
}