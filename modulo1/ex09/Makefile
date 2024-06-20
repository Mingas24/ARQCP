# A simple Makefile
program: sort_without_reps.o main.o
	gcc sort_without_reps.o main.o -o prog_sum
counter.o: sort_without_reps.c
	gcc -g -Wall -c sort_without_reps.c -o sort_without_reps.o
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
clean:
	rm -f *.o prog_sum
run: program
	./prog_sum

