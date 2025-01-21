CC	= gcc
CFLAGS	= -g
RM	= rm -f

REV_FILES = src/swap.c \
	    src/textRev.c

HDR = $(wildcard src/*.h) 
default: all

all: exe/hello

exe/hello: src/hello.c
	$(CC) $(CFLAGS) -o exe/hello src/hello.c

strRev: $(HDR) $(REV_FILES)
	$(CC) $(CFLAGS) -o exe/strRev $(HDR) $(REV_FILES) 

clean veryclean:
	$(RM) exe/hello
