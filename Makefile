# makefile for tuningFork

CC=gcc
CFLAGS=-fopenmp
LDFLAGS=-lm

all: no

no: main.o
	$(CC) $(CFLAGS) main.o -o no $(LDFLAGS)

main.o:
	$(CC) $(CFLAGS) -c main.c $(LDFLAGS)


clean:
	rm -f *.o no *.stackdump
