include ../makefile-vars.mk

INPUT_FILE=$(CURDIR)/inputrc
LINK_PATH=$(HOME)/.inputrc

.PHONY: install uninstall

install: $(BACKUP_DIR)/.inputrc
	test ! -f $(LINK_PATH) && ln -s $(INPUT_FILE) $(LINK_PATH) || :

uninstall:
	test -h $(LINK_PATH) && test $(INPUT_FILE) = `readlink $(LINK_PATH)` && $(RM) $(LINK_PATH) || :

include ../makefile-utils.mk
