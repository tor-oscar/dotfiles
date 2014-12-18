GITC_FILE=$(CURDIR)/gitconfig
LINK_PATH=$(HOME)/.gitconfig

.PHONY: install uninstall

install:
	$(RM) $(LINK_PATH) && ln -sf $(GITC_FILE) $(LINK_PATH)

uninstall:
	test -h $(LINK_PATH) && test $(GITC_FILE) = `readlink $(LINK_PATH)` && $(RM) $(LINK_PATH) || :
