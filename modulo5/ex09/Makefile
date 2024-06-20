program: asm1.o asm2.o asm3.o asm4.o main.o
	gcc asm1.o asm2.o asm3.o asm4.o main.o  -o program
	
main.o: main.c
	gcc -g -Wall -c main.c
	
asm1.o: asm1.s
	gcc -g -Wall -c asm1.s
	
asm2.o: asm2.s
	gcc -g -Wall -c asm2.s

asm3.o: asm3.s
	gcc -g -Wall -c asm3.s

asm4.o: asm4.s
	gcc -g -Wall -c asm4.s
	
clean:
	rm -f *.o program
	
run: program
	./program