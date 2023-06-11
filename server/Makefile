CROSS_COMPILE ?= 
CC = $(CROSS_COMPILE)gcc

all: aesdsocket
.DEFAULT: all;

aesdsocket : aesdsocket.c
	$(CC) -o $@ $<

clean:
	rm -rf aesdsocket
