hellomake: hellomake.c hellofunc.c
	gcc -Wall -g -o hellomake hellomake.c hellofunc.c  -I.

.PHONY: clean

clean:
	rm -f hellomake
