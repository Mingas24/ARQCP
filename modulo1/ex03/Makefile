# A simple Makefile
program: sum_even.o main.o
	gcc sum_even.o main.o -o prog_sum
counter.o: counter.c
	gcc -g -Wall -c sum_even.c -o sum_even.o
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
clean:
	rm -f *.o prog_sum
run: program
	./prog_sum

