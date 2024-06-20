# A simple Makefile
ex10: odd_sum main
	gcc odd_sum main -o ex10
odd_sum: odd_sum.c
	gcc -g -Wall -c odd_sum.c -o odd_sum
main: main.c
	gcc -g -Wall -c main.c -o main
clean:
	rm -f *.o ex10
run: ex10
	./ex10
