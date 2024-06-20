

prog : main.o isMultiple.o
	gcc -Wall -g main.o isMultiple.o -o prog
main.o: main.c isMultiple.h
	gcc -Wall -g -c main.c
isMultiple.o: isMultiple.s
	gcc -Wall -g -c isMultiple.s
run: prog
	./prog
clean:
	rm *.o prog
