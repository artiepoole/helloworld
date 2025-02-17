prefix = /usr

.PHONY: all
all: hello

hello: hello.c
	gcc -o hello hello.c

.PHONY: install
install:
	mkdir $(DESTDIR)$(prefix)/bin
	install hello $(DESTDIR)$(prefix)/bin
	mkdir $(DESTDIR)$(prefix)/share/man/man1
	install hello.1 $(DESTDIR)$(prefix)/share/man/man1


.PHONY: clean
clean:
	rm -f hello

