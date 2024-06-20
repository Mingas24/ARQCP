#Makefile
progex02b: main.o
	gcc main.o -o progex02b
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o progex02b
	
run: progex02b
	./progex02b