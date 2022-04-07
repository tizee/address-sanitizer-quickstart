.PHONY: clean, mrproper
CC = clang
ADRESS_SANITIZER_FLAGS=-O1 -fsanitize=address
CFLAGS = -g -Wall

all: leak use_after_free heap_overflow

%.o: %.c
	$(CC) $(ADRESS_SANITIZER_FLAGS) $(CFLAGS) -c -o $@ $<

leak: leak.o
	$(CC) $(ADRESS_SANITIZER_FLAGS) $(CFLAGS) -o $@ $+

use_after_free: use_after_free.o
	$(CC) $(ADRESS_SANITIZER_FLAGS) $(CFLAGS) -o $@ $+

heap_overflow: heap_overflow.o
	$(CC) $(ADRESS_SANITIZER_FLAGS) $(CFLAGS) -o $@ $+

cpp_delete_mismatch:
	clang++ $(ADRESS_SANITIZER_FLAGS) $(CFLAGS) -o $@ $@.cpp

clean:
	rm -f *.o
	rm -rf *.dSYM

mrproper: clean
	rm -f leak use_after_free heap_overflow cpp_delete_mismatch
