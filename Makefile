all:
	gcc -g -c -Wall main.c -o main.o
	gcc -g -c -Wall scheduler.c -o scheduler.o -pthread
	gcc -g -Wall main.o scheduler.o -o application -pthread

clean:
	rm *.o
	rm application