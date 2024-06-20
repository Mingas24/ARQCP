void add_byte(char x, int *vec1, int *vec2){
	int i;
	int mask_last_byte = 0x000000ff;
	int mask_rest = 0xffffff00;
	vec2[0] = vec1[0];
	
	for(i = 1; i < vec1[0]+1; i++){
		int temp_last_byte = vec1[i] & mask_last_byte;		
		temp_last_byte += x;								//Soma apenas o ultimo byte com x
		temp_last_byte = temp_last_byte & mask_last_byte;	//Guarda apenas o ultimo byte
		int temp_rest = vec1[i] & mask_rest;				//Restantes bits
		vec2[i] = temp_rest | temp_last_byte;
		
	}
}

