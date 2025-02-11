.PHONY: all
all: hello

hello: src.c
	mkdir ./out
	gcc -o hello src.c
	mv hello ./out/hello

.PHONY: clean
clean:
	rm -rf out/
