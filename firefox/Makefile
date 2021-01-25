DOT_FILE=$(CURDIR)/chrome
LINK_PATH=$(wildcard $(HOME)/.mozilla/firefox/*.default)/chrome

.PHONY: install uninstall

install:
	$(RM) -r $(LINK_PATH) && ln -sf $(DOT_FILE) $(LINK_PATH)

uninstall:
	test -h $(LINK_PATH) && test $(DOT_FILE) = `readlink $(LINK_PATH)` && $(RM) $(LINK_PATH) || :

