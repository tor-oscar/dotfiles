include ../makefile-vars.mk
ZSHRC_FILE=$(CURDIR)/zshrc
ZSHRC_LOCAL_FILE=$(CURDIR)/zshrc_local
PATHS_FILE=$(CURDIR)/shell_paths
ALIASES_FILE=$(CURDIR)/shell_aliases

.PHONY: install uninstall

install: $(BACKUP_DIR)/.zshrc
	ln -s $(ZSHRC_FILE) $(HOME)/.zshrc
	ln -s $(PATHS_FILE) $(HOME)/.shell_paths
	ln -s $(ALIASES_FILE) $(HOME)/.shell_aliases
	test -f $(HOME)/.zshrc_local || cp $(ZSHRC_LOCAL_FILE) $(HOME)/.zshrc_local

uninstall:
	test -h $(HOME)/.zshrc -a $(ZSHRC_FILE) = `readlink $(HOME)/.zshrc && $(RM) $(LINK_PATH)
	test -h $(HOME)/.shell_paths -a $(PATHS_FILE) = `readlink $(HOME)/.shell_paths && $(RM) $(LINK_PATH)
	test -h $(HOME)/.shell_aliases -a $(ALIASES_FILE) = `readlink $(HOME)/.shell_aliases && $(RM) $(LINK_PATH)

include ../makefile-utils.mk
