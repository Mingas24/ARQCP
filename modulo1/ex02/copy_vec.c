void copy_vec (int *vec1, int *vec2, int n){
	int i;
	//Copia as posiçoes do 2º vetor para o 1º
	for(i=0;i<=n;i++){
		*(vec2+i) = *(vec1+i);
	}
}
