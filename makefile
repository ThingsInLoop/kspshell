CC=gcc
CFLAGS=-Wall
SRCS=src/main.c
OBJS=$(SRCS:.c=.o)
EXEC=kspshell
INSTALL_DIR=/usr/bin

all: $(SRCS) $(EXEC)

$(EXEC): $(OBJS)
	$(CC) $(OBJS) -o $@
	
%.c.o:
	$(CC) $(CFLAGS) $< -o $@
	
clean:
	rm -f src/*.o $(EXEC)
	
install:
	cp $(EXEC) $(INSTALL_DIR)/$(EXEC)
	
uninstall:
	rm -f $(INSTALL_DIR)/$(EXEC)