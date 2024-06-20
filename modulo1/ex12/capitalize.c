//#include <string.h>
void capitalize (char *str){
	int length = 0;
	int fim = 0;
	int j = 0;
	while(fim == 0){
		if (str[j]!='\0'){
			length ++;
		}else{
			fim = 1;
		}
		j++;
	}
	//length = strlen(str);
	int i;
	//Ciclo que corre a frase 
	for(i=0; i< length; i++) {
		//A primeira letra e sempre maiuscula
		if(i==0 && *(str+i)>='a' && *(str+i)<='z'){
			*(str+i) = *(str+i) - 32;
		}
		//Se o valor lido for um espaço
		if(*(str+i)<='z'  && *(str+i)>='a' && *(str+i-1)==' '){
			//Torna a letra seguinte maiuscula
			*(str+i)= *(str+i) - 32;
		}
	}
}
