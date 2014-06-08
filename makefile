CC=gcc
CFLAGS=-Wall -g -I.
DEPS=hellomake.h

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS) 

hellomake: hellomake.o hellofunc.o
	$(CC) $(CFLAGS) -o hellomake hellomake.o hellofunc.o

.PHONY: clean

clean:
	rm -f hellomake *.o *~

