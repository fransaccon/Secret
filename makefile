include config.mk

PROGRAM=secret

.PHONY: all install uninstall

all:

install:
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp -f $(PROGRAM) $(DESTDIR)$(PREFIX)/bin
	mkdir -p $(DESTDIR)$(MANPREFIX)/man1
	cp -f $(PROGRAM).1 $(DESTDIR)$(MANPREFIX)/man1

uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/$(PROGRAM)
	rm -f $(DESTDIR)$(MANPREFIX)/man1/$(PROGRAM).1
