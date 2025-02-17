prefix = /usr
CFLAGS =-g

.PHONY: all
all: hello

hello: hello.c
	gcc -o hello hello.c $(CFLAGS)

.PHONY: install
install:
	mkdir -p $(DESTDIR)$(prefix)/bin
	install hello $(DESTDIR)$(prefix)/bin
	mkdir -p $(DESTDIR)$(prefix)/share/man/man1
	install hello.1 $(DESTDIR)$(prefix)/share/man/man1


.PHONY: clean
clean:
	rm -f hello

