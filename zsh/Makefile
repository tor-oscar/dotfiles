ZSHRC_FILE=$(CURDIR)/zshrc
ZSHRC_LOCAL_FILE=$(CURDIR)/zshrc_local
PATHS_FILE=$(CURDIR)/shell_paths
ALIASES_FILE=$(CURDIR)/shell_aliases

.PHONY: install uninstall

install:
	test -f $(HOME)/.zshrc && test $(ZSHRC_FILE) != `readlink $(HOME)/.zshrc` || ln -fs $(ZSHRC_FILE) $(HOME)/.zshrc
	ln -sf $(PATHS_FILE) $(HOME)/.shell_paths
	ln -sf $(ALIASES_FILE) $(HOME)/.shell_aliases
	test -f $(HOME)/.zshrc_local || cp $(ZSHRC_LOCAL_FILE) $(HOME)/.zshrc_local
	chsh -s /usr/bin/zsh

uninstall:
	test -h $(HOME)/.zshrc && test $(ZSHRC_FILE) = `readlink $(HOME)/.zshrc` && $(RM) $(HOME)/.zshrc || :
	test -h $(HOME)/.shell_paths && test $(PATHS_FILE) = `readlink $(HOME)/.shell_paths` && $(RM) $(HOME)/.shell_paths || :
	test -h $(HOME)/.shell_aliases && test $(ALIASES_FILE) = `readlink $(HOME)/.shell_aliases` && $(RM) $(HOME)/.shell_aliases || :
