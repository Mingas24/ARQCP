int find_matrix(int **m, int y, int k, int num){
	int i, j;
	int *ptr;
	for(i = 0; i < y; i++){
		ptr = *(m+i);
		for (j = 0; j < k; j++){
			if (*(ptr+i) == num){
			return 1;
			}
		}
	}
	return 0;
}
	