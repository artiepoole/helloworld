prefix = /usr

.PHONY: all
all: hello

hello: hello.c
	gcc -o hello hello.c

.PHONY: install
install:
	install hello $(DESTDIR)$(prefix)/bin
	install hello.1 $(DESTDIR)$(prefix)/share/man/man1
	mkdir $(DESTDIR)$(prefix)/bin
	mkdir $(DESTDIR)$(prefix)/share/man/man1
	
.PHONY: clean
clean:
	rm -f hello

