# A simple Makefile
program: palindrome.o main.o
	gcc palindrome.o main.o -o prog_sum
palindrome.o: palindrome.c
	gcc -g -Wall -c palindrome.c -o palindrome.o
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
clean:
	rm -f *.o prog_sum
run: program
	./prog_sum
