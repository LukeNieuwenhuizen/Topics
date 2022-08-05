scanner: scanner.c
	gcc -std=c99 -o a.out scanner.c

clean:
	rm a.out