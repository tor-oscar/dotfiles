LINK_PATH=$(HOME)/.tmux.conf
CONF_FILE=tmux.conf

.PHONY: install uninstall

install:
	ln -sf $(CONF_FILE) $(LINK_PATH)

uninstall:
	test -h $(LINK_PATH) && test $(CONF_FILE) = `readlink $(LINK_PATH)` && $(RM) $(LINK_PATH) || :
