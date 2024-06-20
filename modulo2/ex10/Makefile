# A simple Makefile

prog: main.o sum2ints.o
	gcc -Wall -g main.o sum2ints.o -o prog
	
main.o: main.c
	gcc -Wall -g -c main.c -o main.o
	
sum_and_subtract.o: sum2ints.s
	gcc -Wall -g -c sum2ints.s
	
clean:
	rm -f *.o prog
	
run: prog
	./prog
