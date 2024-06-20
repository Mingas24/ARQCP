#Makefile
progex08: asm.o main.o
	gcc asm.o main.o -o progex08
	
asm.o: asm.s
	gcc -g -Wall -c asm.s -o asm.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o progex08
	
run: progex08
	./progex08