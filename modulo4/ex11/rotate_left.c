int rotate_left(int num, int nbits){
	while(nbits != 0){
		int flag =  0;
		if(num < 0){
			flag = 1;
		}
		num = num << 1;
		if(flag == 1){
			num++;
		}
		nbits--;
	}
	return num;}
