CC=gcc
CFLAGS=-Wall -g -I.

hellomake: hellomake.o hellofunc.o
	$(CC) $(CFLAGS) -o hellomake hellomake.o hellofunc.o

.PHONY: clean

clean:
	rm -f hellomake *.o *~

