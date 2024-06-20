ex01: main.o asm.o
	gcc -g -Wall main.o asm.o -o ex01
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
asm.o: asm.s
	gcc -g -Wall -c asm.s 
clean:
	rm -f *.o ex01
run: ex01
	./ex01
