int odd_sum(int *array){
	int n = *(array);
	array ++;
	int sum = 0;
	int i;
	for (i = 0; i < n; i++){
		if(*(array+i) % 2!=0){
				sum += *(array+i);
		}
	}
	return sum;
}
