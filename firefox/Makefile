DOT_FILE=$(CURDIR)/chrome
LINK_PATH=$(HOME)/.mozilla/firefox/44sybsef.default/chrome

.PHONY: install uninstall

install:
	$(RM) -r $(LINK_PATH) && ln -sf $(DOT_FILE) $(LINK_PATH)

uninstall:
	test -h $(LINK_PATH) && test $(DOT_FILE) = `readlink $(LINK_PATH)` && $(RM) $(LINK_PATH) || :

