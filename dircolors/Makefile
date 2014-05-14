include ../makefile-vars.mk
GIT_URL=https://github.com/seebi/dircolors-solarized.git
GIT_PATH=$(CURDIR)/dircolors-solarized-git
LINK_PATH=$(HOME)/.dircolorsrc
DIRCOL_FILE=$(GIT_PATH)/dircolors.256dark

.PHONY: install uninstall

install: $(BACKUP_DIR)/.dircolorsrc clone
	test ! -f $(LINK_PATH) && ln -s $(DIRCOL_FILE) $(LINK_PATH) || :

uninstall:
	test -h $(LINK_PATH) && test $(DIRCOL_FILE) = `readlink $(LINK_PATH)` && $(RM) $(LINK_PATH) || :

include ../makefile-utils.mk
