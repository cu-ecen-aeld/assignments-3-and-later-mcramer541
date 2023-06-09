CROSS_COMPILE ?= 
CC = $(CROSS_COMPILE)gcc

all : writer.c
	$(CC) -o $@ $<


writer : writer.c
	$(CC) -o $@ $<

clean:
	rm -rf writer
