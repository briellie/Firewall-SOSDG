VERSION=0.9.8a
TAR=/usr/bin/tar
TARBALL="firewall-sosdg-$(VERSION).tar.bz2"



default:
	@echo; \
	echo "This makefile doesn't do much at the moment other then"; \
	echo "make it easy to make releases and such.  Please read it"; \
	echo "if you so desire." ;\
	echo

tarball:
	cd .. ;\
        $(TAR) jcf $(TARBALL) --exclude='.svn' firewall-sosdg

upgrade:
	mv -f blocked ipv4-blocked &>/dev/null
