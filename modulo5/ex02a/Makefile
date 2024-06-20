#Makefile
progex02a: main.o
	gcc main.o -o progex02a
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o progex02a
	
run: progex02a
	./progex02a