VERSION=0.9.14
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
        COPYFILE_DISABLE=true $(TAR) vjcf $(TARBALL) --exclude='.svn' firewall-sosdg

upgrade:
	mv -f blocked ipv4-blocked &>/dev/null
	
config_update:
	tools/convert-config

config_move:
	mv -f ipv4-* conf/ &>/dev/null
	mv -f ipv6-* conf/ &>/dev/null
	mv -f port-forwards* conf/ &>/dev/null
	mv -f postrun* conf/ &>/dev/null
	mv -f prerun* conf/ &>/dev/null
