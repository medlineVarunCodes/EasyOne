CC	= gcc
CFLAGS	= -g
RM	= rm -f

default: all

all: exe/hello

exe/hello: src/hello.c
	$(CC) $(CFLAGS) -o exe/hello src/hello.c

clean veryclean:
	$(RM) exe/hello
