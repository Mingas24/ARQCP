#include <stdio.h>
int activate_bit(int *ptr, int pos){
	
	int inicial = *ptr;
	
	int mascara = 1<<pos; //shift para por o bit a 1 na posicao passada por parametro
	int antesMascara = inicial; //guarda o valor antes de aplicar a mascara
	int depoisMascara = inicial | mascara; //aplicar a mascara
	
	int verificar;
	if (antesMascara != depoisMascara){  //verifica se foi ou não alterado
		verificar = 1;	//se mudar, o valor é 1
	}else{
		verificar = 0;	//se não, o valor é 0
	}
	*ptr = depoisMascara;//guarda o valor depois da mascara
	
	return verificar;
}
