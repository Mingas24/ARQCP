# A simple Makefile

prog: main.o test_flags.o
	gcc -Wall -g main.o test_flags.o -o prog
	
main.o: main.c
	gcc -Wall -g -c main.c -o main.o
	
sum_and_subtract.o: test_flags.s
	gcc -Wall -g -c test_flags.s
	
clean:
	rm -f *.o prog
	
run: prog
	./prog
