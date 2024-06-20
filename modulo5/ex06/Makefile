program: asm.o asm2.o funcao.o main.o
	gcc funcao.o asm.o asm2.o main.o -o program
	
main.o: main.c
	gcc -g -Wall -c main.c
	
funcao.o: funcao.c
	gcc -g -Wall -c funcao.c

asm.o:
	gcc -g -Wall -c asm.s
	
asm2.o:
	gcc -g -Wall -c asm2.s
#funcao2.o: funcao2.c
#	gcc -g -Wall -c funcao2.c
	
clean:
	rm -f *.o program
	
run: program
	./program