# A simple Makefile

prog: populate.o check.o inc_nsets.o main.o
	gcc populate.o check.o inc_nsets.o main.o -o prog
	
check.o: check.c
	gcc -g -Wall -c check.c -o check.o

populate.o: populate.c
	gcc -g -Wall -c populate.c -o populate.o
	
inc_nsets.o: inc_nsets.c
	gcc -g -Wall -c inc_nsets.c -o inc_nsets.o

main.o: main.c
	gcc -g -Wall -c main.c -o main.o

clean:
	rm -f *.o prog
	
run: prog
	./prog
