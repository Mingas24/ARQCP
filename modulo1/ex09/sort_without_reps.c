int sort_without_reps(int *src, int n, int *dest){

int i;
int j;
int temp;
int cont=0;
int flag =0;

	for(i = 0 ; i < n-1 ; i++){
		for(j = i+1; j < n ; j++){
			if(*(src+i) > *(src+j)){
				temp=*(src+i);
				*(src+i)=*(src+j);
				*(src+j)=temp;
			}
		}
	}
	
	for(i = 0; i < n ; i++){
		for(j = 0; j < cont ; j++){
			if(*(src + i) == *(dest + j)){
				flag=1;
				break;
			}
		}
		
		if(flag!=1){
			*(dest + cont) = *(src + i);
			cont++;
		}
		
		flag=0;
	}
		
	return cont;
	
	}


