# A simple Makefile
program: power_ref.o main.o
	gcc power_ref.o main.o -o prog_sum
counter.o: power_ref.c
	gcc -g -Wall -c power_ref.c -o power_ref.o
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
clean:
	rm -f *.o prog_sum
run: program
	./prog_sum
