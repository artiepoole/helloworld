.PHONY: all
all: hello

hello: src.c
	gcc -o hello src.c

.PHONY: install
install:
	mkdir -p ./out
	cp -p hello ./out/hello
	chmod +x ./out/hello

.PHONY: clean
clean:
	rm hello
	rm -rf out/
