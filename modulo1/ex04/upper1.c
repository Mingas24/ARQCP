void upper1(char *str){
	do{
		//Verifica se a letra e maiuscula ou minuscula
		if(*str<='z' && *str>='a'){
			//Retira 32 que em codigo ASCII é a diferença entre as maiusculas e as minusculas
			*str = (*str - 32);
		}
		//incrementa um á posição do endereço
			str ++;
	
	}while(*str != 0);
}

