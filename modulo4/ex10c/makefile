#A simple Makefile
main: main.o count_bits_zero.o 
	gcc -Wall -g main.o count_bits_zero.o -o main
main.o: main.c count_bits_zero.h 
	gcc -Wall -g -c main.c
count_bits_zero.o: count_bits_zero.s
	gcc -Wall -g -c count_bits_zero.s
run: main
	./main
clean:
	rm *.o main
debug:
	gdb -tui main
