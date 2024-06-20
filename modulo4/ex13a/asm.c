int activate_bits(int a, int left, int right){
	
unsigned int mask_right = 0;;
int mask_left = 0;
	
	if(right>0){
		mask_right = 0xffffffff;
		mask_right = mask_right >> (32-(right));	//sums 1 so that it doesn't count its own bit 
	}	
		
	if(left<31){
		mask_left = 0xffffffff;
		mask_left = mask_left << (left+1);	//sums 1 so that it doesn't count its own bit
	}
			
	int mask = mask_right | mask_left;

	return a | mask;
}
