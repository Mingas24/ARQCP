#include <stdio.h>
#include <string.h>

int main( void ){
	typedef struct {
		char vec[32];
		float a;
		int b;
	} u;
	//Este exercico como a estrutura já está declarada como um struct e não uma union 
	//o programa reserva espaço na memória para todas as variáveis declaradas na struct.
	//Sendo assim não escreve valores por cima de outras variáveis e quando se imprime algo, o output vem correto
	u u1;
	u *ptr;
	ptr = &u1;
	strcpy(ptr->vec, "arquitectura de computadores" );
	printf( "[1]=%s\n", ptr->vec );
	ptr->a = 123.5;
	printf( "[2]=%f\n", ptr->a );
	ptr->b = 2;
	printf( "[3]=%d\n", ptr->b );
	printf( "[1]=%s\n", ptr->vec );
	printf( "[2]=%f\n", ptr->a );
	printf( "[3]=%d\n", ptr->b );
	return 0;
}
