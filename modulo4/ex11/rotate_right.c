int rotate_right(int num, int nbits){
	unsigned int aux = (unsigned int) num;   
	int flag = 1;
	while(nbits != 0){
		int carry = aux & flag;
		aux = aux >> 1;
		if(carry != 0){
			aux = aux + 0x80000000;
		}
		nbits--;
	}
	return aux;
}
