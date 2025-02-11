.PHONY: all
all: hello

hello: src.c
	gcc -o hello src.c

.PHONY: install
install:
	mkdir -p $(DESTDIR)
	cp -p hello $(DESTDIR)/hello
	chmod +x $(DESTDIR)/hello

.PHONY: clean
clean:
	rm hello
	rm -rf out/
