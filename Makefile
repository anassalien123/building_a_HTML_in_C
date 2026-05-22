flags=-02 -Wall -std=c2x
ldflags=-lbu

all: clean hyperbrid

hyperbrid: hyperbrid.o
	cc $(flags) $^ -o $@ $(ldflags)

hyperbrid.o: hyperbrid.c hyperbrid.h
	cc $(flags) -c $<

clean:
	rm -f *.o hyperbrid

.PHONY: all clean