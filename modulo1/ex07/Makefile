# A simple Makefile
program: array_sort1.o main.o
	gcc array_sort1.o main.o -o prog_sum
counter.o: power_ref.c
	gcc -g -Wall -c array_sort1.c -o array_sort1.o
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
clean:
	rm -f *.o prog_sum
run: program
	./prog_sum
