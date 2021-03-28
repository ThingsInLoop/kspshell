CC=gcc
CFLAGS=-Wall
SRCS=src/main.c
OBJS=$(SRCS:.c=.o)
EXEC=kspshell

all: $(SRCS) $(EXEC)

$(EXEC): $(OBJS)
	$(CC) $(OBJS) -o $@
	
%.c.o:
	$(CC) $(CFLAGS) $< -o $@
	
clean:
	rm -f src/*.o $(EXEC)