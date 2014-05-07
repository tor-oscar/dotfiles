include ../makefile-vars.mk
GIT_URL=https://github.com/seebi/dircolors-solarized.git
GIT_PATH=$(CURDIR)/dircolors-solarized-git
LINK_PATH=$(HOME)/.dircolorsrc
DIRCOL_FILE=$(CURDIR)/dircolorsrc.sh

.PHONY: install uninstall

install: $(BACKUP_DIR)/.dircolorsrc clone
	ln -s $(DIRCOL_FILE) $(LINK_PATH)

uninstall:
	test -h $(LINK_PATH) -a $(DIRCOL_FILE) = `readlink $(LINK_PATH) && $(RM) $(LINK_PATH)

include ../makefile-utils.mk
