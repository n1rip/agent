CFLAGS = -Wall -Wconversion -Wextra

# Find all .c files excluding those in n1.ko directory
SRC_FILES := $(shell find . -name '*.c' ! -path './module/*' ! -path './libcfg/tests/*')

debug:
	clang -std=gnu2x -g -o agent $(SRC_FILES) $(CFLAGS) -DDEBUG -fsanitize=address -fno-optimize-sibling-calls -levdev

release:
	clang -std=gnu2x -O3 -o agent $(SRC_FILES) $(CFLAGS) -levdev

clean:
	rm -rf *.o agent