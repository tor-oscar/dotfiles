INPUT_FILE=$(CURDIR)/inputrc
LINK_PATH=$(HOME)/.inputrc

.PHONY: install uninstall

install:
	$(RM) $(LINK_PATH) && ln -sf $(INPUT_FILE) $(LINK_PATH)

uninstall:
	test -h $(LINK_PATH) && test $(INPUT_FILE) = `readlink $(LINK_PATH)` && $(RM) $(LINK_PATH) || :
