include ../makefile-vars.mk
GIT_URL=git.mufasa:tmux
GIT_PATH=$(CURDIR)/tmux-git
LINK_PATH=$(HOME)/.tmux.conf
CONF_FILE=$(GIT_PATH)/tmux.conf

.PHONY: install uninstall

install: $(BACKUP_DIR)/.tmux.conf clone
	ln -s $(CONF_FILE) $(LINK_PATH)

uninstall:
	test -h $(LINK_PATH) && test $(CONF_FILE) = `readlink $(LINK_PATH)` && $(RM) $(LINK_PATH) || :

include ../makefile-utils.mk
