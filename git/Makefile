include ../makefile-vars.mk

GITC_FILE=$(CURDIR)/gitconfig
LINK_PATH=$(HOME)/.gitconfig

.PHONY: install uninstall

install: $(BACKUP_DIR)/.inputrc
	test ! -f $(LINK_PATH) && ln -s $(GITC_FILE) $(LINK_PATH) || :

uninstall:
	test -h $(LINK_PATH) && test $(GITC_FILE) = `readlink $(LINK_PATH)` && $(RM) $(LINK_PATH) || :

include ../makefile-utils.mk
