void compress_shorts(short* shorts, int n_shorts, int* integers){
	// faz o cast dos shorts
	short *array= (short*)integers;
	int i; 
	//percorre o array de shorts para os copiar para o array de int, com um contador para ocupar a quantidade certa de bytes
	for (i= 0; i < n_shorts; i++)
	{
		*(array+i)=*(shorts+i);
	}
	//integers= (int*)array;
}
