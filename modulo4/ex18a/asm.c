int sum_multiples_x(char *vec, int x){
	x >>= 8;					//puts 2nd byte in the 1st place
	x &= 255;					//value of 2nd byte
	int sum = 0;
	while (*(vec) != 0){		//end of vector
		int rest = *(vec) % x;	//rest of division by x
		if (rest == 0){			//check if it's multiple
			sum += *(vec);		//add it
		}
		vec++;
	}
	return sum;
}
