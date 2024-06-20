void frequencies(float *grades,int n, int *freq)
{
	int i;
	for(i=0; i<21; i++){
		*(freq+i) = 0;
	}
	
	for(i=0; i<n; i++){
		int valor = (int)*(grades +i);
		*(freq+valor) +=1;
	}
}
