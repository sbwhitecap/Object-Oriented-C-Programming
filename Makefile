OBJS = Object.o test.o Int.o
TARGET = test
CC ?= gcc
AR ?= ar
CFLAGS += -O
CFLAGS += -Wall

.SUFFIXES: .c .o

all :	$(TARGET)

$(TARGET)   :	$(OBJS)
		gcc -o $(TARGET) $(OBJS)

.c .o	:   $<
	    $(CC) -c $< $(CFRAGS)

clean   :   
	    rm -f $(OBJS) $(TARGET)

